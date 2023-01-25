<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1612995774812" ID="ID_1608470301" MODIFIED="1627494799716">
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
<node CREATED="1612995856475" ID="ID_1162388674" MODIFIED="1613074437937" POSITION="right" TEXT="was published in">
<node CREATED="1613073545644" ID="ID_961074691" MODIFIED="1613995588681" STYLE="bubble" TEXT="2015"/>
</node>
<node CREATED="1613039826013" HGAP="19" ID="ID_1687566837" MODIFIED="1627494919273" POSITION="right" TEXT="uses a dataset" VSHIFT="-4">
<node CREATED="1613040138681" HGAP="21" ID="ID_1186329212" MODIFIED="1613995620530" STYLE="bubble" TEXT="with 153 cases" VSHIFT="10"/>
<node CREATED="1613040155698" HGAP="22" ID="ID_1751447797" MODIFIED="1627494818065" STYLE="bubble" TEXT="from a fake resume game" VSHIFT="3"/>
<node CREATED="1613040410819" HGAP="24" ID="ID_376667968" MODIFIED="1613996489963" STYLE="bubble" TEXT="manually annotated with 2 classes: true/false" VSHIFT="8"/>
<node CREATED="1612995877928" HGAP="25" ID="ID_851863342" MODIFIED="1627494828732" STYLE="bubble" TEXT="composed" VSHIFT="-5">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1627495195669" STYLE="fork" TEXT="by">
<node CREATED="1613074560572" ID="ID_1701540512" MODIFIED="1627495224902" STYLE="bubble" TEXT="demographic cues" VSHIFT="7">
<node CREATED="1613476249666" ID="ID_418224357" MODIFIED="1613476262624" STYLE="fork" TEXT="measured by">
<node CREATED="1613476266538" ID="ID_930688774" MODIFIED="1627495277488" STYLE="bubble" TEXT="1 gender feature"/>
<node CREATED="1613476266538" ID="ID_316712805" MODIFIED="1627495298110" STYLE="bubble" TEXT="1 native language feature"/>
<node CREATED="1613476266538" ID="ID_764209667" MODIFIED="1627495479698" STYLE="bubble" TEXT="1 ethnicity feature"/>
</node>
</node>
<node CREATED="1613473273471" ID="ID_1049024807" MODIFIED="1632862132615" STYLE="bubble" TEXT="vocal cues" VSHIFT="12">
<node CREATED="1613476295226" ID="ID_811816596" MODIFIED="1613476337898" STYLE="fork" TEXT="measured by">
<node CREATED="1613476305018" ID="ID_1250694714" MODIFIED="1627498040376" STYLE="bubble" TEXT="6 voice pitch features"/>
<node CREATED="1613476305018" ID="ID_1434076656" MODIFIED="1627498059340" STYLE="bubble" TEXT="4 voice energy features"/>
<node CREATED="1613476305018" ID="ID_1819343698" MODIFIED="1627498071294" STYLE="bubble" TEXT="3 voice quality features"/>
<node CREATED="1613476305018" ID="ID_1297042154" MODIFIED="1627498136777" STYLE="bubble" TEXT="1 speaking rate feature"/>
</node>
<node CREATED="1613996508052" ID="ID_1757524456" MODIFIED="1627494859928" STYLE="fork" TEXT="language is ">
<node CREATED="1613996518972" ID="ID_1718326729" MODIFIED="1627494859929" STYLE="bubble" TEXT="English"/>
<node CREATED="1613996518972" ID="ID_1748451872" MODIFIED="1627495247655" STYLE="bubble" TEXT="Mandarin"/>
</node>
<node CREATED="1613679687313" ID="ID_46057767" MODIFIED="1627494989796" STYLE="fork" TEXT="extracted by">
<node CREATED="1613679694753" HGAP="14" ID="ID_179082603" MODIFIED="1627494982436" STYLE="bubble" TEXT="Kaldi"/>
<node CREATED="1613679694753" HGAP="14" ID="ID_1920373099" MODIFIED="1627498706318" STYLE="bubble" TEXT="Praat"/>
</node>
</node>
<node CREATED="1613074560572" ID="ID_1260015228" MODIFIED="1627495330566" STYLE="bubble" TEXT="psychological cues" VSHIFT="7">
<node CREATED="1613476249666" ID="ID_1884140190" MODIFIED="1613476262624" STYLE="fork" TEXT="measured by">
<node CREATED="1613476266538" ID="ID_853996806" MODIFIED="1627498268336" STYLE="bubble" TEXT="5 NEO-FFI score features"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="29" ID="ID_1196706136" MODIFIED="1627498399817" POSITION="left" TEXT="Method" VSHIFT="7">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1613995739507" STYLE="bubble" TEXT="J48">
<node CREATED="1613681828801" ID="ID_715802616" MODIFIED="1613681868726" STYLE="fork" TEXT="with hit rate">
<node CREATED="1613681834136" ID="ID_1617614970" MODIFIED="1613996430468" STYLE="bubble" TEXT="0.6486"/>
</node>
<node CREATED="1613681828801" ID="ID_1576963631" MODIFIED="1627494893324" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_495447491" MODIFIED="1627494899821" STYLE="bubble" TEXT="WEKA"/>
</node>
</node>
<node CREATED="1613074729144" HGAP="21" ID="ID_1755329340" MODIFIED="1627494870058" STYLE="bubble" TEXT="Random Forest">
<node CREATED="1613681828801" ID="ID_749048669" MODIFIED="1613681868726" STYLE="fork" TEXT="with hit rate">
<node CREATED="1613681834136" ID="ID_798570628" MODIFIED="1613996782409" STYLE="bubble" TEXT="0.6586"/>
</node>
<node CREATED="1613681828801" ID="ID_1591655397" MODIFIED="1627494893324" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_2954972" MODIFIED="1627494899821" STYLE="bubble" TEXT="WEKA"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_1295687106" MODIFIED="1613996681228" STYLE="bubble" TEXT="Bagging">
<node CREATED="1613681828801" ID="ID_299023933" MODIFIED="1613681868726" STYLE="fork" TEXT="with hit rate">
<node CREATED="1613681834136" ID="ID_1454173649" MODIFIED="1613996758028" STYLE="bubble" TEXT="0.639"/>
</node>
<node CREATED="1613681828801" ID="ID_505022817" MODIFIED="1627494893324" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_177665349" MODIFIED="1627494899821" STYLE="bubble" TEXT="WEKA"/>
</node>
</node>
</node>
<node CREATED="1621615152253" HGAP="30" ID="ID_1563058369" MODIFIED="1627311249685" POSITION="right" TEXT="hypothesizes that" VSHIFT="-14">
<node CREATED="1621615163848" ID="ID_1605510623" MODIFIED="1627497612053" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      individual and cross-cultural differences may interfere in deception detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1618592872925" HGAP="22" ID="ID_1561590355" MODIFIED="1627498396577" POSITION="left" TEXT="contributes by" VSHIFT="4">
<node CREATED="1618592894401" HGAP="22" ID="ID_67928716" MODIFIED="1652355571080" STYLE="bubble" VSHIFT="11">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Including NEO-FFI inventory psychological features for deception detection
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="24" ID="ID_1597127551" MODIFIED="1627496018693" STYLE="bubble" VSHIFT="-1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Including demographic features such as gender, ethnicity and language
    </p>
    <p>
      for deception detection
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="24" ID="ID_1936502872" MODIFIED="1652355503623" STYLE="bubble" VSHIFT="-1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Comparing the impact of native language for deception detection
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1618595050108" HGAP="19" ID="ID_1328971121" MODIFIED="1652355568350" POSITION="left" TEXT="concludes that" VSHIFT="-68">
<node CREATED="1618595058137" HGAP="22" ID="ID_1081810761" MODIFIED="1652355699923" STYLE="bubble" VSHIFT="11">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      the NEO-FFI scores, gender and native language seem to be important
    </p>
    <p>
      factors for deception detection
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
