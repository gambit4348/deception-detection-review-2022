import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import BiblioAlly as ally
from functools import reduce

# Styling MatPlotLib

plt.style.use('tableau-colorblind10')
plt.rcParams.update({
    'font.size': 13,
    'figure.figsize': (9, 7),
    'grid.color': '#D8D8D8'
}) # set font and plot size to be larger

from matplotlib import cycler
colors = cycler('color',
                ['#5887E6', '#EBA050', '#30BF6B', '#EB4B6A', '#18C1B9', '#9F68EF', '#E0E004', '#8F3E71', '#7D7D7D', '#8D6C61',
                 '#88B7FF', '#FFD885', '#60FFBB', '#FF7B9A', '#48F1E9', '#CF98FF', '#F8F834', '#BF6EA1', '#ADADAD', '#BD9C91',
                 '#B8EFFF', '#FFFFB5', '#90FFEB', '#FFABCA', '#78FFFF', '#FFC8FF', '#FFFF64', '#EF9ED1', '#DDDDDD', '#EDCCC1',])
plt.rc('axes', facecolor='none', edgecolor='#484848', axisbelow=True, grid=True, prop_cycle=colors)

pd.set_option('display.max_rows', 150)
pd.set_option('display.max_colwidth', 400)


# Declaring utility functions

def max_accuracy(accuracies):
    accuracies.sort(key=lambda item: item[1])
    return accuracies[-1][1]


def max_technique(accuracies):
    accuracies.sort(key=lambda item: item[0])
    return accuracies[-1][0]


def best_method(methods):
    best_one = methods[0]
    for method in methods:
        if method[1] > best_one[1]:
            best_one = method
    return best_one


def best_method(methods):
    methods = sorted([m for m in methods if 'performance' in m], key=lambda method: highest_performance(method)['value'])
    return methods[-1]


def highest_performance(method):
    performances = sorted(method['performance'], key=lambda performance: performance['value'])
    return performances[-1]
    

def performance_by_kind(method, kind):
    performances = [performance['value'] for performance in method['performance'] if performance['kind'] == kind]
    return performances[0] if len(performances) > 0 else 0


def bar(df, title, total, xlabel='', ylabel='', ylim=None, width=0.9, figsize=(8,4), ypercoffset=0, legend_cols=None, ax=None):
    font_size = plt.rcParams['font.size']
    should_show = ax is None
    if not should_show:
        figsize = None
    ax = df.plot.bar(title=title, width=width, rot=45, figsize=figsize, ax=ax)
    ax.legend().remove()
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    if ylim is not None:
        ax.set_ylim(0, ylim)
    for index, p in enumerate(ax.patches):
        h = p.get_height()
        label = f'{h}'
        ax.text(index, h+1, label, ha='center')
        label = f'{h*100/total:2.2f}%'
        ax.text(index, h+0.15, label, ha='center', fontsize=font_size*0.75)
    if should_show:
        plt.show()


def barh(df, title, total, xlabel='', ylabel='', xlim=None, width=0.9, figsize=(8,4), x_offset=0.1, x_offset_perc=0, legend_cols=None, ax=None):
    font_size = plt.rcParams['font.size']
    should_show = ax is None
    if ax is not None:
        figsize = None
    ax = df.plot.barh(title=title, width=width, figsize=figsize, ax=ax)
    ax.legend().remove()
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    if xlim is not None:
        ax.set_xlim(0, xlim)
    for p in ax.patches:
        w = p.get_width()
        label = f'{w}'
        ax.text(w + x_offset, p.get_y() + 0.3, label)
        label = f'({w*100/total:2.2f}%)'
        ax.text(w + x_offset + x_offset_perc, p.get_y() + 0.3, label, fontsize=font_size*.75)
    if should_show:
        plt.show()

    
def bar_stacked(df, title, xlabel='', ylabel='', width=0.9, figsize=(8,4),
                y_offset=0.4, offset_perc=0, perc_below=False, 
                bbox_to_anchor=None, v_legends=True, legend_cols=None, ax=None):
    font_size = plt.rcParams['font.size']
    should_show = ax is None
    if not should_show:
        figsize = None
    counts = df.iloc[:, 0:].values
    totals = [l.sum() for l in counts]
    percs = []
    for index, row in enumerate(counts):
        percs.append([value*100/totals[index] for value in row])
    percs = np.array(percs).T.flatten()
    percs = percs[percs != 0]

    ax = df.plot.bar(title=title, stacked=True, width=width, rot=45, figsize=figsize, ax=ax)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    index = 0
    for p in ax.patches:
        h = p.get_height()
        if h>0:
            value = str(int(h))
            if perc_below:
                ax.text(p.get_x()+0.015, h+p.get_y()-y_offset, value)
                ax.text(p.get_x()+0.015, h+p.get_y()-(y_offset*2+offset_perc), f'({percs[index]:2.2f}%)', fontsize=font_size*0.75)
            else:
                ax.text(p.get_x()+0.015, h+p.get_y()-y_offset, value)
                ax.text(p.get_x()+0.015+(0.15*len(value)), h+p.get_y()-(y_offset+offset_perc), f'({percs[index]:2.2f}%)', fontsize=font_size*0.75)
            index += 1
    if v_legends:
        ax.legend(loc="upper right", bbox_to_anchor=bbox_to_anchor)
    else:
        ax.legend(loc='lower center', bbox_to_anchor=bbox_to_anchor, ncol=legend_cols if legend_cols is not None else len(counts))
    if should_show:
        plt.show()


def barh_stacked(df, title, xlabel='', ylabel='', width=0.9, figsize=(8,4),
                 x_offset=0.0, xpercoffset=0, y_offset=0.025, perc_below=True, bbox_to_anchor=None, legend_cols=None, ax=None):
    font_size = plt.rcParams['font.size']
    should_show = ax is None
    if not should_show:
        figsize = None
    counts = df.iloc[:, 0:].values
    totals = [l.sum() for l in counts]
    percs = []
    for index, row in enumerate(counts):
        percs.append([value*100/totals[index] for value in row])
    percs = np.array(percs).T.flatten()
    percs = percs[percs != 0]

    ax = df.plot.barh(title=title, stacked=True, width=width, rot=45, figsize=figsize, ax=ax)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    index = 0
    for p in ax.patches:
        w = p.get_width()
        if w>0:
            value = str(int(w))
            if perc_below:
                plt.text(p.get_x()+w-x_offset, p.get_y()+0.3+y_offset, value, horizontalalignment='right')
                plt.text(p.get_x()+w-x_offset, p.get_y()+y_offset, f'({percs[index]:2.2f}%)', fontsize=font_size*0.75, horizontalalignment='right')
            else:
                plt.text(p.get_x()+w-x_offset, p.get_y()+y_offset, value, horizontalalignment='right')
                plt.text(p.get_x()+w-x_offset, p.get_y()+y_offset, f'({percs[index]:2.2f}%)', fontsize=font_size*0.75, horizontalalignment='right')
            index += 1
    if bbox_to_anchor is not None:
        ax.legend(loc="upper right", bbox_to_anchor=bbox_to_anchor)
    else:
        if legend_cols is None:
            legend_cols = len(counts)
        plt.legend(loc="lower center", bbox_to_anchor=(0.5, -0.17), ncol=legend_cols)
    if should_show:
        plt.show()


def doc_status(tags):
    if ally.TAG_PRE_SELECTED not in tags and ally.TAG_REJECTED in tags:
        return 'Pre-rejected (after shallow screening)'
    elif ally.TAG_PRE_SELECTED in tags and ally.TAG_REJECTED not in tags:
        return 'Pre-accepted (after shallow screening)'
    elif ally.TAG_REJECTED in tags:
        return 'Post-rejected (after deep screening)'
    elif ally.TAG_SELECTED in tags:
        return 'Accepted  (after deep screening)'
    elif ally.TAG_DUPLICATE in tags:
        return 'Duplicate (automatic and manual)'
    else:
        return 'UNKNOWN'


def donut(df, title, data_column=0, figsize=(10, 8), pctdistance=0.85, labeldistance=1.05, ax=None):
    should_show = ax is None
    data_total = sum(df.iloc[:, data_column])
    row_count = len(df)
    if ax is not None:
        figsize = None
    ax = df.plot.pie(title=title, y=df.columns[data_column], 
                     autopct=lambda p : f'{p*data_total/100:,.0f}\n({p:.2f}%)',
                     pctdistance=pctdistance, labeldistance=labeldistance,
                     figsize=figsize, wedgeprops=dict(width=0.5), ax=ax)
    bbox = ax.get_window_extent().transformed(ax.get_figure().dpi_scale_trans.inverted())
    h = np.abs(bbox.y1-bbox.y0)
    ax.text(0, 0, f'{data_total}', fontsize=10*h, fontweight='heavy', ha='center', va='baseline')
    ax.text(0, -0.15, '(100%)', fontsize='xx-large', ha='center',)
    plt.ylabel('')
    ax.get_legend().remove()
    if should_show:
        plt.show()    


def show_bp_data(bp, vert=True, ax=None, mean_offset=0):
    if ax is None:
        ax = plt.gca()
    for line in bp.values[0]['means']:
        x, y = line.get_xydata()[0] # top of median line
        if vert:
            ax.text(x, y+mean_offset, f'{y:.2f}', horizontalalignment='center')
        else:
            ax.text(x, y+mean_offset, f'{x:.2f}', horizontalalignment='center')
    
    all_equal = bp.values[0]['whiskers']
    for index in range(len(bp.values[0]['whiskers'])):
        line = bp.values[0]['whiskers'][index]
        x, y = line.get_xydata()[1] # bottom of left line
        if vert:
            if (index % 2) == 0:
                ax.text(x-0.12, y-0.004, f'{y:.2f}', horizontalalignment='right', verticalalignment='top')
            else:
                ax.text(x+0.12, y+0.002, f'{y:.2f}', horizontalalignment='left', verticalalignment='bottom')
        else:
            if (index % 2) == 0:
                ax.text(x, y-0.15, f'{x:.2f}', horizontalalignment='center', verticalalignment='top')
            else:
                ax.text(x, y+0.13, f'{x:.2f}', horizontalalignment='center', verticalalignment='bottom')
        x, y = line.get_xydata()[0] # bottom of left line
        if vert:
            if (index % 2) == 0:
                ax.text(x-0.12, y-0.004, f'{y:.2f}', horizontalalignment='right', verticalalignment='top')
            else:
                ax.text(x+0.12,  y+0.002, f'{y:.2f}', horizontalalignment='left', verticalalignment='bottom')
        else:
            if (index % 2) == 0:
                ax.text(x, y-0.04, f'{x:.2f}', horizontalalignment='right', verticalalignment='top')
            else:
                ax.text(x, y, f'{x:.2f}', horizontalalignment='left', verticalalignment='bottom')


def features_df_from_modality(all_modalities_df, modality_name):
    modality_features_df = all_modalities_df.loc[:,['document_id', modality_name, 'Year']]
    modality_features_df.drop(modality_features_df[modality_features_df[modality_name].str.len()==0].index, inplace=True)
    all_modality_features = sorted(list(set(reduce(lambda x, y: x+y, modality_features_df[modality_name].values))))
    for feature in all_modality_features:
        modality_features_df[feature] = modality_features_df[modality_name].apply(lambda features: 1 if feature in features else 0)
    return modality_features_df, all_modality_features


def plot_features_summary(modality_features_df, modality_name, feature_names,
                          sort_values=False, width=0.9, figsize=(12,8), x_offset=0.1, y_offset=0.3, xlim=None, xpercoffset=0, ax=None):
    should_show = ax is None
    if not should_show:
        figsize = None
    summary_df = modality_features_df.loc[:, feature_names]
    summary_df = pd.DataFrame(summary_df.sum(axis=0))
    summary_df.columns = ['Volume']
    if sort_values:
        summary_df.sort_values('Volume', inplace=True)
    
    barh(summary_df,title=f'Distribution of {modality_name} features exploited in the selected corpus',
         xlabel='Volume of papers', figsize=figsize, total=summary_df.Volume.sum(), xlim=xlim, xpercoffset=xpercoffset, ax=ax)
    return summary_df


def plot_features_by_year(modality_features_df, modality_name, feature_names,
                          width=0.9, figsize=(12,8), x_offset=0.1, xpercoffset=1, y_offset=0.3, bbox_to_anchor=None, legend_cols=None, ax=None):
    features_year_df = modality_features_df.loc[:, ['Year']+feature_names]
    features_year_df = features_year_df.groupby('Year').agg(sum)

    barh_stacked(features_year_df, title=f'Distribution of {modality_name} features exploited in the selected corpus by year',
                 xlabel='Volume of papers', width=width, figsize=figsize, bbox_to_anchor=bbox_to_anchor,
                 x_offset=x_offset, y_offset=y_offset, xpercoffset=xpercoffset, legend_cols=legend_cols, ax=ax)
    return features_year_df


# Declaing query functions

class StatView:
    def __init__(self, num_rows=1, num_cols=1, size=(10,10), year_name='year'):
        self.num_rows = num_rows
        self.num_cols = num_cols
        self.year_name = year_name
        self.size = size
        self.h_ratio = [1]*self.num_rows
        self.h_space = 0.1
        self.w_ratio = [1]*self.num_cols
        self.w_space = 0.1
        self.view_params = dict()
    
    def layout(self, w_ratio=None, w_space=0.1, h_ratio=None, h_space=0.1):
        self.w_ratio = [1]*self.num_cols if w_ratio is None else w_ratio
        self.w_space = w_space
        self.h_ratio = [1]*self.num_rows if h_ratio is None else h_ratio
        self.h_space = 0.1
        return self
    
    def params(self, view_row, view_col, **kwargs):
        self.view_params[f'{view_row} {view_col}'] = kwargs
        return self
    
    def plot_summary(self, df, all_items, title):
        fig, ax = plt.subplots(self.num_rows, self.num_cols, figsize=self.size,
                               gridspec_kw={'height_ratios': self.h_ratio, 'hspace': self.h_space, 'width_ratios': self.w_ratio, 'wspace': self.w_space})
        #fig.set_tight_layout(0.07)

        sum_df = pd.DataFrame(df.loc[:,all_items].sum(axis=0))
        #sum_df.index.set_names('Operated languages')
        sum_df.columns = ['Volume']
        total_volume = sum_df.Volume.sum()

        params = self.view_params['1 1'] if '1 1' in self.view_params else dict()
        x_lim = params['x_lim'] if 'x_lim' in params else None
        x_offset = params['x_offset'] if 'x_offset' in params else 0.4
        x_offset_perc = params['x_offset_perc'] if 'x_offset_perc' in params else 0.2
        width = params['width'] if 'width' in params else 0.9
        legend_anchor = params['legend_anchor'] if 'legend_anchor' in params else None
        kind = params['kind'] if 'kind' in params else None
        if kind is None:
            kind = 'donut' if len(all_items) <= 5 else 'barh'
        
        if kind == 'donut':
            donut(sum_df, title=title, ax=ax[0])
        else:
            barh(sum_df, title=title, #xlabel='Volume of papers',
                 total=total_volume, xlim=x_lim, x_offset=x_offset, x_offset_perc=x_offset_perc, width=width, ax=ax[0])

        params = self.view_params['1 2'] if '1 2' in self.view_params else dict()
        y_offset = params['y_offset'] if 'y_offset' in params else 0.4
        offset_perc = params['offset_perc'] if 'offset_perc' in params else 0
        perc_below = params['perc_below'] if 'perc_below' in params else False
        legend_cols = params['legend_cols'] if 'legend_cols' in params else None
        v_legends = params['v_legends'] if 'v_legends' in params else True
        width = params['width'] if 'width' in params else 0.9
        legend_anchor = params['legend_anchor'] if 'legend_anchor' in params else None
        
        if self.year_name == 'year':
            year_title = ' by year '
        else:
            year_title = ' por ano '
        yearly_df = df.loc[:,[self.year_name]+all_items].groupby(self.year_name).agg(sum)
        bar_stacked(yearly_df, title=title+year_title, #ylabel='Volume of papers',
                    y_offset=y_offset, offset_perc=offset_perc, perc_below=perc_below,
                    width=width, v_legends=v_legends, legend_cols=legend_cols, bbox_to_anchor=legend_anchor, ax=ax[1])        

        
short_mod_name = {
    'Demographical': 'Dem',
    'Dynamical': 'Dyn',
    'Emotional': 'Emo',
    'Physiological': 'Phy',
    'Psychological': 'Psy',
    'Textual': 'Tex',
    'Thermal': 'The',
    'Visual': 'Vis',
    'Vocal': 'Voc',
}


class StatHelper:
    def __init__(self, documents, year_name='year'):
        self.all_documents = documents
        self.document_by_id = dict()
        self.year_name = year_name
        for document in self.all_documents:
            self.document_by_id[document.id] = document
        self.metadata = [eval(document.attachment_by_name('Metadata').content) for document in self.all_documents]

    def include_extra_fields(self, df, extra_fields):
        if extra_fields is not None:
            for extra_field in extra_fields:
                df[extra_field] = df.document_id.apply(lambda id: getattr(self.document_by_id[id], extra_field))

    def cardinalities_df(self, all_metadata, expanded=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        mod_metadata = self.modalities_metadata(all_metadata)
        df = pd.DataFrame(mod_metadata)
        self.include_extra_fields(df, includes)
        all_cardinalities = ['Monomodal', 'Bimodal', 'Multimodal']
        if expanded:
            df['cardinality'] = df.modalities.str.len()
            df['Monomodal'] = df.cardinality.apply(lambda count: 0 if count>1 else 1) 
            df['Bimodal'] = df.cardinality.apply(lambda count: 1 if count==2 else 0) 
            df['Multimodal'] = df.cardinality.apply(lambda count: 1 if count>2 else 0) 
            df.drop(columns=['cardinality'], inplace=True)
            if not keep_collection:
                df.drop(columns=['modalities'], inplace=True)
        else:
            all_cardinalities = None
        return df, all_cardinalities

    def features_df(self, all_metadata, modality, expand=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        fea_metadata = self.features_metadata(all_metadata, modality)
        df = pd.DataFrame(fea_metadata)
        self.include_extra_fields(df, includes)
        
        if expand:
            all_features = self.features_unique(df)
            for feature in all_features:
                df[feature] = df.features.apply(lambda features: 1 if feature in features else 0)
            if not keep_collection:
                df.drop(columns=['features'], inplace=True)
        else:
            all_features = None
        return df, all_features

    def features_metadata(self, all_metadata, modality):
        fea_metadata = [{
            'document_id': md['document_id'],
            'features': [f['components'] for f in md['dataset']['features'] if f['kind'] in modality],
            }
            for md in all_metadata]
        fea_metadata = [metadata for metadata in fea_metadata if len(metadata['features'])>0]
        for metadata in fea_metadata:
            metadata['features'] = sorted(list(set([feature for features in metadata['features'] for feature in features])))
        return fea_metadata

    def features_unique(self, features_df):
        if {'features'}.issubset(features_df.columns):
            all_features = features_df.features.values
            all_features = sorted(list(set(reduce(lambda x, y: x+y, all_features))))
            return all_features
        return None

    def languages_df(self, all_metadata, expand=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        lang_metadata = self.languages_metadata(all_metadata)
        df = pd.DataFrame(lang_metadata)
        self.include_extra_fields(df, includes)
        
        if expand:
            all_languages = self.languages_unique(df)
            for language in all_languages:
                df[language] = df.languages.apply(lambda languages: 1 if language in languages else 0)
            if not keep_collection:
                df.drop(columns=['languages'], inplace=True)
        else:
            all_languages = None
        return df, all_languages

    def languages_metadata(self, all_metadata):
        lan_metadata = [{
            'document_id': md['document_id'],
            'languages': [f['language'] for f in md['dataset']['features'] if 'language' in f],
            }
            for md in all_metadata]
        lan_metadata = [metadata for metadata in lan_metadata if len(metadata['languages'])>0]
        for metadata in lan_metadata:
            metadata['languages'] = sorted(list(set([language for languages in metadata['languages'] for language in languages])))
        return lan_metadata

    def languages_unique(self, languages_df):
        if {'languages'}.issubset(languages_df.columns):
            all_languages = languages_df.languages.values
            all_languages = sorted(list(set(reduce(lambda x, y: x+y, all_languages))))
            return all_languages
        return None

    def modalities_df(self, all_metadata, expand=True, keep_collection=False, includes=None, cardinality_limit=None, combine_modalities=False):
        if includes is None:
            includes=[self.year_name]
        mod_metadata = self.modalities_metadata(all_metadata)
        df = pd.DataFrame(mod_metadata)
        self.include_extra_fields(df, includes)
        if cardinality_limit is not None:
            df['cardinality'] = df.modalities.str.len()
            df['cardinality'] = df.cardinality.apply(lambda cardinality: 'Monomodal' if cardinality <2 else 'Bimodal' if cardinality == 2 else 'Multimodal')
            df = pd.DataFrame(df[df.cardinality.isin(cardinality_limit)])
            if combine_modalities:
                df.modalities = df.modalities.apply(lambda modalities: '+'.join([short_mod_name[modality] for modality in modalities]))
        
        if expand:
            all_modalities = self.modalities_unique(df)
            for modality in all_modalities:
                df[modality] = df.modalities.apply(lambda modalities: 1 if modality in modalities else 0)
            if not keep_collection:
                df.drop(columns=['modalities'], inplace=True)
        else:
            all_modalities = None
        if cardinality_limit is not None:
            df.drop(columns=['cardinality'], inplace=True)
        return df, all_modalities

    def modalities_metadata(self, all_metadata):
        mod_metadata = [{
            'document_id': md['document_id'],
            'modalities': sorted([f['kind'] for f in md['dataset']['features']]),
            }
            for md in all_metadata]
        return mod_metadata

    def modalities_unique(self, modalities_df):
        if {'modalities'}.issubset(modalities_df.columns):
            all_modalities = modalities_df.modalities.values
            if type(all_modalities[0]) is list:
                all_modalities = sorted(list(set(reduce(lambda x, y: x+y, all_modalities))))
            else:
                all_modalities = sorted(list(set(all_modalities)))
            return all_modalities
        return None

    def _performance_of(self, classifier, performance_kind):
        performance = [performance['value'] for performance in classifier['performance'] if performance['kind']==performance_kind]
        return performance[0] if len(performance)>0 else None
    
    def performances_metadata(self, all_metadata, technique):
        pre_per_metadata = [{
            'document_id': md['document_id'],
            'classifier': [method for method in md['methods'] if 'classifier' in method and method['classifier'] == technique],
        } for md in all_metadata]
        pre_per_metadata = [metadata for metadata in pre_per_metadata if len(metadata['classifier'])>0]
        per_metadata = []
        for pre_metadata in pre_per_metadata:
            classifiers = pre_metadata['classifier']
            metadata = [{
                'document_id': pre_metadata['document_id'],
                'classifier': classifier,
                'technique': classifier['classifier'],
                'flavor': classifier['kind'] if 'kind' in classifier else 'Vanilla',
            } for classifier in classifiers]
            per_metadata = per_metadata + metadata
        return sorted(per_metadata, key=lambda item: item['document_id'])

    def performances_df(self, all_metadata, technique, expand=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        per_metadata = self.performances_metadata(all_metadata, technique)
        df = pd.DataFrame(per_metadata)
        self.include_extra_fields(df, includes)
        
        if expand:
            all_performances = reduce(lambda left, right: left+right, [method['performance'] for method in df.classifier.values])
            all_performances = sorted(list(set([performance['kind'] for performance in all_performances])))
            for performance_kind in all_performances:
                df[performance_kind] = df.classifier.apply(lambda classifier: self._performance_of(classifier, performance_kind))
            if not keep_collection:
                df.drop(columns=['classifier'], inplace=True)
        else:
            all_performances = None
        return df, all_performances

    def techniques_df(self, all_metadata, expand=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        tec_metadata = self.techniques_metadata(all_metadata)
        df = pd.DataFrame(tec_metadata)
        self.include_extra_fields(df, includes)
        
        if expand:
            all_techniques = self.techniques_unique(df)
            for technique in all_techniques:
                df[technique] = df.techniques.apply(lambda techniques: techniques.count(technique))
            if not keep_collection:
                df.drop(columns=['techniques'], inplace=True)
        else:
            all_techniques = None
        return df, all_techniques

    def techniques_metadata(self, all_metadata):
        tec_metadata = [{
            'document_id': md['document_id'],
            'techniques': [method['classifier'] for method in md['methods'] if 'classifier' in method],
            }
            for md in all_metadata]
        #tec_metadata = [metadata for metadata in tec_metadata if len(metadata['languages'])>0]
        #for metadata in lan_metadata:
        #    metadata['techniques'] = sorted(list(set([language for languages in metadata['techniques'] for language in languages])))
        return tec_metadata

    def techniques_unique(self, techniques_df):
        if {'techniques'}.issubset(techniques_df.columns):
            all_techniques = techniques_df.techniques.values
            all_techniques = sorted(list(set(reduce(lambda x, y: x+y, all_techniques))))
            return all_techniques
        return None

    def technique_flavors_df(self, all_metadata, technique, expand=True, keep_collection=False, includes=None):
        if includes is None:
            includes=[self.year_name]
        fla_metadata = self.technique_flavors_metadata(all_metadata, technique)
        df = pd.DataFrame(fla_metadata)
        self.include_extra_fields(df, includes)
        
        if expand:
            all_flavors = self.technique_flavors_unique(df)
            for flavor in all_flavors:
                df[flavor] = df.flavors.apply(lambda flavors: flavors.count(flavor))
            if not keep_collection:
                df.drop(columns=['flavors'], inplace=True)
        else:
            all_flavors = None
        return df, all_flavors

    def technique_flavors_metadata(self, all_metadata, technique):
        fla_metadata = [{
            'document_id': md['document_id'],
            'flavors': [(method['kind'] if 'kind' in method else 'Vanilla') for method in md['methods'] if 'classifier' in method and method['classifier']==technique],
            }
            for md in all_metadata]
        fla_metadata = [metadata for metadata in fla_metadata if len(metadata['flavors'])>0]
        return fla_metadata

    def technique_flavors_unique(self, flavors_df):
        if {'flavors'}.issubset(flavors_df.columns):
            all_flavors = flavors_df.flavors.values
            all_flavors = sorted(list(set(reduce(lambda x, y: x+y, all_flavors))))
            return all_flavors
        return None

    def view(self, num_rows=1, num_cols=1, size=(10,10)):
        return StatView(num_rows, num_cols, size, self.year_name)
