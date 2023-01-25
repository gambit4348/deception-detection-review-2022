# deception-detection-review-2022
# Deception Detection with Machine Learning: a literature review and statistical analisys
## Literature review
### Introduction
The files present in this repository are part of the Literature Review Project and aim to disclose the data collected along the process, and work as a memory of all the steps taken as well.

Currently, the manuscript of the scientific article that discusses the consequences and findings of the Literature Review was submitted to the Scientific Journal PLOS One (https://journals.plos.org/plosone/) and is waiting for a response from the peer reviewers.

### Research team and contribution
#### Conceptualization
1.	Alex Sebastião Constâncio
2.	Denise Fukumi Tsunoda
3.	Deborah Ribeiro Carvalho
#### Data curation
1.	Alex Sebastião Constâncio
2.	Denise Fukumi Tsunoda
#### Formal analysis
1.	Alex Sebastião Constâncio
#### Investigation
1.	Alex Sebastião Constâncio
2.	Denise Fukumi Tsunoda
#### Methodology
1.	Alex Sebastião Constâncio
2.	Deborah Ribeiro Carvalho
3.	Helena de Fátima Nunes Silva
4.	Jocelaine Martins da Silveira
#### Software
1.	Alex Sebastião Constâncio
#### Writing – original draft
1.	Alex Sebastião Constâncio
#### Writing – review and editing
1.	Deborah Ribeiro Carvalho
2.	Denise Fukumi Tsunoda
3.	Helena de Fátima Nunes Silva
4.	Jocelaine Martins da Silveira
#### Supervision
1.	Deborah Ribeiro Carvalho
2.	Helena de Fátima Nunes Silva
## Research scope and objectives
### 1. Research goals
The goal of this literature review is to capture a panoramic view of the state of research on Deception Detection supported by Machine Learning, in order to be able to understand trends, results and gaps on the field.
### 2. Research questions

a. What are the best-performing Machine Learning techniques applied to automatic deception detection?

b. What are the datasets and features they consume?

c. What level of performance have they reached recently?

### 3. Research restrictions
1.	Period of interest is 2011-2021;
2.	Only non-invasive methods and techniques will be reviewed; by non-invasive, we mean methods that absolutely do not touch the subject nor submit him/her to be evaluated by an equipment less mobile then a regular computer;
3.	Only studies that report some kind of performance level achieved.
### 4. Research protocol
1.	Run queries on selected scientific document bases:
2.	Export results as BibTeX files
3.	Import all BibTeX files into BiblioAlly; those documents are tagged as "IMPORTED" or "DUPLICATE"
4.	Manually detect duplications not detected during import and tag them as "DUPLICATE"
5.	Pre-select articles by shallow screening:
6.	Retrieve the full-text of pre-selected documents
7.	Select articles by deep screening
8.	Extract relevant data from accepted documents
9.	Run a meta-analysis and generate charts and tables
### 5. Data extraction
After reading the full text of selected papers, each were summarized in two forms:
1.	Mind map: a graphical summarized form of the study;
2.	Python dictionary: an encoded version of the extracted meta-data of interest that can be further computed to produce statistics, charts and tables.
Details on each one below.
### 6. Mind maps
Mind maps are FreeMind documents, manually produced, since BiblioAlly still can't do it automatically (for now we can dream about it, right?). Those mind maps were built to serve as a quick and short summary of the entire article and helped during reading and reviewing their full text.
Those maps describe the study hypothesis, the contributions, the dataset, the feature modalities, the methods used, and the performance achieved.
### 7. Meta-data encoding
Each article was structured as follows:
1.	document_id: the document id in the BiblioAlly database;
2.	methods: list of methods and tools used in the paper, each item is described as classifier or support:
1.	classifier: describes the classification algorithm as:
1.	kind: when appliable, describes some kind or sub-category of the method;
2.	implementation: package used as algorithm implementor;
3.	performance: performance achieved by the classifier described as:
1.	kind: the performance measure used;
2.	value: the performance level achieved;
2.	support: describes supporting tools used for some generic purpose;
3.	dataset: description of the dataset used in the study:
1.	public: True indicates a freely accessible dataset, False the opposite;
2.	mock: True indicates a dataset collected from some fabricated setting, False means data collected from real-life events;
3.	name: name of the dataset;
4.	size: number of rows listed in the dataset;
5.	origin: source of the data;
6.	target: labels used in the target attribute;
7.	features: list of feature kinds in the dataset:
1.	kind: the kind of detection cue features;
2.	dimensions: the number of features;
3.	components: list of feature components;
4.	language: list of languages, when appliable;
5.	tool: list of tools, when appliable;
4.	notes: textual notes about the study;
5.	mindmap: file name of the mind map document.


