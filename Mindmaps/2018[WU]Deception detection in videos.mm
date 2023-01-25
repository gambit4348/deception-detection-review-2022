<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1612995774812" ID="ID_1608470301" MODIFIED="1621888436044">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      Study on
    </p>
    <p style="text-align: center">
      Deception Detection
    </p>
  </body>
</html></richcontent>
<node CREATED="1612995856475" HGAP="56" ID="ID_1162388674" MODIFIED="1621888398404" POSITION="right" TEXT="was published in" VSHIFT="52">
<node CREATED="1613073545644" ID="ID_961074691" MODIFIED="1621945770800" STYLE="bubble" TEXT="2018"/>
</node>
<node CREATED="1613039826013" HGAP="46" ID="ID_1687566837" MODIFIED="1621942578201" POSITION="right" TEXT="uses a dataset" VSHIFT="-18">
<node CREATED="1613040138681" HGAP="21" ID="ID_1186329212" MODIFIED="1621942567855" STYLE="bubble" TEXT="with 104 examples" VSHIFT="10"/>
<node CREATED="1613040155698" HGAP="24" ID="ID_1751447797" MODIFIED="1628559001797" STYLE="bubble" TEXT="from a subset of Real-Life Trial Deception Detection Dataset" VSHIFT="3"/>
<node CREATED="1613040410819" HGAP="25" ID="ID_376667968" MODIFIED="1628559003324" STYLE="bubble" TEXT="manually annotated with 2 classes: truthful/deceptive" VSHIFT="1"/>
<node CREATED="1612995877928" HGAP="25" ID="ID_851863342" MODIFIED="1621942706857" STYLE="bubble" TEXT="Composed" VSHIFT="-5">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1621942711387" STYLE="fork" TEXT="by">
<node CREATED="1613473273471" ID="ID_1049024807" MODIFIED="1654087239609" STYLE="bubble" TEXT="visual cues" VSHIFT="1">
<node CREATED="1613476295226" HGAP="21" ID="ID_811816596" MODIFIED="1628559114637" STYLE="fork" TEXT="described by" VSHIFT="-3">
<node CREATED="1613476305018" ID="ID_1250694714" MODIFIED="1621943428982" STYLE="bubble" TEXT="two-level facial micro-expression features"/>
</node>
</node>
<node CREATED="1613473273471" ID="ID_839491458" MODIFIED="1628559118133" STYLE="bubble" TEXT="textual cues" VSHIFT="-3">
<node CREATED="1613476295226" HGAP="28" ID="ID_911296755" MODIFIED="1621942739049" STYLE="fork" TEXT="described by" VSHIFT="-6">
<node CREATED="1613476305018" ID="ID_390002509" MODIFIED="1628559105161" STYLE="bubble" TEXT="300 GloVe representation features" VSHIFT="7"/>
</node>
<node CREATED="1613476295226" HGAP="27" ID="ID_336575370" MODIFIED="1628559109276" STYLE="fork" TEXT="language is" VSHIFT="-13">
<node CREATED="1613476305018" ID="ID_1352465731" MODIFIED="1628559106788" STYLE="bubble" TEXT="English" VSHIFT="7"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="23" ID="ID_1609359982" MODIFIED="1654087233227" STYLE="bubble" TEXT="vocal cues" VSHIFT="-4">
<node CREATED="1613476295226" ID="ID_1972592699" MODIFIED="1621942747057" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_550668080" MODIFIED="1621943457330" STYLE="bubble" TEXT="MFCC features"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="26" ID="ID_1196706136" MODIFIED="1652719576479" POSITION="left" TEXT="applied method" VSHIFT="35">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1648212102426" STYLE="bubble" TEXT="Logistic Regression">
<node CREATED="1613681828801" HGAP="21" ID="ID_715802616" MODIFIED="1652719560983" STYLE="fork" TEXT="with AUC of" VSHIFT="-3">
<node CREATED="1613681834136" HGAP="21" ID="ID_1617614970" MODIFIED="1628559658589" STYLE="bubble" TEXT="0.9221" VSHIFT="10"/>
</node>
</node>
<node CREATED="1613074729144" HGAP="22" ID="ID_1764808340" MODIFIED="1652719552094" STYLE="bubble" TEXT="Random Forest" VSHIFT="4">
<node CREATED="1613681828801" HGAP="22" ID="ID_297443702" MODIFIED="1652719562839" STYLE="fork" TEXT="with AUC of" VSHIFT="-3">
<node CREATED="1613681834136" HGAP="21" ID="ID_813145631" MODIFIED="1648212128509" STYLE="bubble" TEXT="0.8731" VSHIFT="10"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_352543907" MODIFIED="1648212142290" STYLE="bubble" TEXT="AdaBoost">
<node CREATED="1613681828801" HGAP="22" ID="ID_1451592530" MODIFIED="1652719564875" STYLE="fork" TEXT="with AUC of" VSHIFT="-3">
<node CREATED="1613681834136" HGAP="21" ID="ID_1556407532" MODIFIED="1648212151627" STYLE="bubble" TEXT="0.8321" VSHIFT="10"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_1974428170" MODIFIED="1648212166258" STYLE="bubble" TEXT="Decision Tree">
<node CREATED="1613681828801" HGAP="22" ID="ID_1832794648" MODIFIED="1652719566611" STYLE="fork" TEXT="with AUC of" VSHIFT="-6">
<node CREATED="1613681834136" HGAP="21" ID="ID_1949539581" MODIFIED="1648212174758" STYLE="bubble" TEXT="0.8074" VSHIFT="10"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_625776477" MODIFIED="1648212195394" STYLE="bubble" TEXT="Na&#xef;ve-Bayes">
<node CREATED="1613681828801" HGAP="21" ID="ID_601187161" MODIFIED="1652719569767" STYLE="fork" TEXT="with AUC of" VSHIFT="-5">
<node CREATED="1613681834136" HGAP="21" ID="ID_659173100" MODIFIED="1648212202526" STYLE="bubble" TEXT="0.8905" VSHIFT="10"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_1727130637" MODIFIED="1654087215401" STYLE="bubble" TEXT="SVM-Linear">
<node CREATED="1613681828801" ID="ID_1046694993" MODIFIED="1628559515616" STYLE="fork" TEXT="with AUC of">
<node CREATED="1613681834136" HGAP="21" ID="ID_1983805127" MODIFIED="1648212220845" STYLE="bubble" TEXT="0.9033" VSHIFT="10"/>
</node>
<node CREATED="1613679687313" HGAP="21" ID="ID_1906824860" MODIFIED="1628559059140" STYLE="fork" TEXT="provided by" VSHIFT="-16">
<node CREATED="1613682079785" HGAP="23" ID="ID_123497974" MODIFIED="1628559054684" STYLE="bubble" TEXT="LibSVM" VSHIFT="11"/>
</node>
</node>
</node>
<node CREATED="1618592872925" HGAP="19" ID="ID_1561590355" MODIFIED="1652719520375" POSITION="left" TEXT="contributes by" VSHIFT="8">
<node CREATED="1618592894401" HGAP="33" ID="ID_102076440" MODIFIED="1654087220137" STYLE="bubble" VSHIFT="-1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Exploring motion dynamics to identify facial deception cues
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="32" ID="ID_719530229" MODIFIED="1652719531935" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Proposing a two-level feature representation
    </p>
    <p>
      for capturing dynamic motion signatures
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="31" ID="ID_512009174" MODIFIED="1652719671711" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Measuring and comparing the accuracy level of monomodal and
    </p>
    <p>
      multimodal deception detection
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595276185" HGAP="31" ID="ID_1081275329" MODIFIED="1652719669639" STYLE="bubble" VSHIFT="-5">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Evaluating the benefit of a two-level feature
    </p>
    <p>
      approach for micro-expressions detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1618595050108" HGAP="18" ID="ID_801076736" MODIFIED="1652719518188" POSITION="left" TEXT="concludes that" VSHIFT="-6">
<node CREATED="1618595058137" HGAP="27" ID="ID_971574549" MODIFIED="1652719734040" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Multimodal deception detection outperforms
    </p>
    <p>
      any other monomodal method
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595110693" HGAP="27" ID="ID_1815652633" MODIFIED="1652719542329" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Audio and Video provide the most important
    </p>
    <p>
      feature set to predict the deceptive behavior
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1621946218929" HGAP="28" ID="ID_416169621" MODIFIED="1652719544127" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Textual features provide lower&#160;predictive
    </p>
    <p>
      power for deception detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1621615152253" ID="ID_100920964" MODIFIED="1621615331378" POSITION="right" TEXT="hypothesizes that">
<node CREATED="1621615163848" ID="ID_251113237" MODIFIED="1654087228304" STYLE="bubble" VSHIFT="-7">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Micro-expressios are hard to detect in static images,
    </p>
    <p>
      but more easily when comparing multiple ones or videos
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
