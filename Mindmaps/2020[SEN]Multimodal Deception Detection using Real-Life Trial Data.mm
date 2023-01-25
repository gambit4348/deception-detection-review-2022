<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1612995774812" ID="ID_1608470301" MODIFIED="1621614907224">
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
<node CREATED="1612995856475" HGAP="46" ID="ID_1162388674" MODIFIED="1618591996936" POSITION="right" TEXT="was published in" VSHIFT="24">
<node CREATED="1613073545644" ID="ID_961074691" MODIFIED="1623696172572" STYLE="bubble" TEXT="2020"/>
</node>
<node CREATED="1613039826013" HGAP="29" ID="ID_1687566837" MODIFIED="1628884097221" POSITION="right" TEXT="uses a dataset" VSHIFT="-4">
<node CREATED="1613040138681" HGAP="27" ID="ID_1186329212" MODIFIED="1652878109547" STYLE="bubble" TEXT="with 59 examples" VSHIFT="-1"/>
<node CREATED="1613040155698" HGAP="27" ID="ID_1751447797" MODIFIED="1652878107875" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from Real-life Trial Deception Detection Dataset
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1613040410819" HGAP="27" ID="ID_376667968" MODIFIED="1628884085001" STYLE="bubble" TEXT="manually annotated with 2 classes: truth/lie" VSHIFT="-2"/>
<node CREATED="1612995877928" HGAP="25" ID="ID_851863342" MODIFIED="1652878111845" STYLE="bubble" TEXT="Composed" VSHIFT="-13">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1621614933981" STYLE="fork" TEXT="by">
<node CREATED="1613473273471" HGAP="18" ID="ID_1609359982" MODIFIED="1652878115878" STYLE="bubble" TEXT="textual cues">
<node CREATED="1613476295226" ID="ID_1972592699" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_550668080" MODIFIED="1623696968879" STYLE="bubble" TEXT="80 LIWC category features"/>
<node CREATED="1613476305018" ID="ID_1046970627" MODIFIED="1623696979588" STYLE="bubble" TEXT="Unigram features"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="25" ID="ID_873180995" MODIFIED="1628884157324" STYLE="bubble" TEXT="vocal cues">
<node CREATED="1613476295226" ID="ID_1227188594" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_1175039021" MODIFIED="1623697175683" STYLE="bubble" TEXT="silence features"/>
<node CREATED="1613476305018" ID="ID_955356738" MODIFIED="1623697186423" STYLE="bubble" TEXT="voice pitch features"/>
<node CREATED="1613476305018" ID="ID_297208652" MODIFIED="1623697197992" STYLE="bubble" TEXT="voice histogram features"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="19" ID="ID_1065533422" MODIFIED="1628884153136" STYLE="bubble" TEXT="visual cues" VSHIFT="-1">
<node CREATED="1613476295226" ID="ID_1199148545" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_1785208402" MODIFIED="1628884147761" STYLE="bubble" TEXT="40 facial and hand features" VSHIFT="4"/>
</node>
<node CREATED="1613476295226" ID="ID_395281664" MODIFIED="1628884131561" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="17" ID="ID_39177557" MODIFIED="1628884146105" STYLE="bubble" TEXT="OpenFace" VSHIFT="7"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="23" ID="ID_1928823355" MODIFIED="1628884161152" STYLE="bubble" TEXT="demography cues" VSHIFT="-2">
<node CREATED="1613476295226" ID="ID_1128231713" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_1277118594" MODIFIED="1623697293933" STYLE="bubble" TEXT="1 gender feature"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="26" ID="ID_1196706136" MODIFIED="1652878157719" POSITION="left" TEXT="applies method" VSHIFT="22">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1654102816070" STYLE="bubble" TEXT="SVM-RBF">
<node CREATED="1613681828801" ID="ID_715802616" MODIFIED="1621882249203" STYLE="fork" TEXT="with accuracy of">
<node CREATED="1613681834136" ID="ID_1617614970" MODIFIED="1648299973985" STYLE="bubble" TEXT="0.565"/>
</node>
<node CREATED="1613681828801" ID="ID_153309537" MODIFIED="1648299961514" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_1492300510" MODIFIED="1648299966330" STYLE="bubble" TEXT="MatLab"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_716414275" MODIFIED="1623697437073" STYLE="bubble" TEXT="Random Forest">
<node CREATED="1613681828801" ID="ID_1910133867" MODIFIED="1621882249203" STYLE="fork" TEXT="with accuracy of">
<node CREATED="1613681834136" ID="ID_649055362" MODIFIED="1648299992639" STYLE="bubble" TEXT="0.6328"/>
</node>
<node CREATED="1613681828801" ID="ID_569142470" MODIFIED="1648299961514" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_769317958" MODIFIED="1648299966330" STYLE="bubble" TEXT="MatLab"/>
</node>
</node>
<node CREATED="1613074729144" ID="ID_1104922130" MODIFIED="1654102909085" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Neural Network
    </p>
    <p>
      (Multi-layer Perceptron)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1613681828801" ID="ID_1718780312" MODIFIED="1621882249203" STYLE="fork" TEXT="with accuracy of">
<node CREATED="1613681834136" ID="ID_437526378" MODIFIED="1648300008109" STYLE="bubble" TEXT="0.7288"/>
</node>
<node CREATED="1613681828801" ID="ID_979092336" MODIFIED="1648299961514" STYLE="fork" TEXT="provided by">
<node CREATED="1613681834136" ID="ID_1429818926" MODIFIED="1648299999574" STYLE="bubble" TEXT="PyTorch"/>
</node>
</node>
</node>
<node CREATED="1613679687313" HGAP="21" ID="ID_46057767" MODIFIED="1621614988409" POSITION="left" TEXT="uses tool" VSHIFT="-7">
<node CREATED="1613682079785" HGAP="48" ID="ID_67780090" MODIFIED="1652878134758" STYLE="bubble" TEXT="Amazon Mechanical Turk" VSHIFT="1">
<node CREATED="1613995817564" ID="ID_950594458" MODIFIED="1613995830999" STYLE="fork" TEXT="for">
<node CREATED="1613995834890" ID="ID_1475730894" MODIFIED="1623696782110" STYLE="bubble" TEXT="Extracting transcriptions from videos"/>
</node>
</node>
<node CREATED="1613682079785" HGAP="47" ID="ID_1666492102" MODIFIED="1652878131845" STYLE="bubble" TEXT="Google Cloud Speech API" VSHIFT="-8">
<node CREATED="1613995817564" ID="ID_737236776" MODIFIED="1613995830999" STYLE="fork" TEXT="for">
<node CREATED="1613995834890" ID="ID_841903673" MODIFIED="1623697980730" STYLE="bubble" TEXT="Speech recognition from videos"/>
</node>
</node>
</node>
<node CREATED="1618592872925" ID="ID_1561590355" MODIFIED="1623696395849" POSITION="left" TEXT="contributes by">
<node CREATED="1618592894401" HGAP="24" ID="ID_102076440" MODIFIED="1652878129533" STYLE="bubble" VSHIFT="-4">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Proposing a&#160;&#160;method for detecting deception at the subject-level
    </p>
    <p>
      rather than the video-level<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="25" ID="ID_719530229" MODIFIED="1652878144487" STYLE="bubble" VSHIFT="-2">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Exploring the effectiveness of a diverse set of features extracted from the
    </p>
    <p>
      linguistic, visual, and acoustic channels, separately and in combination<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="26" ID="ID_918103207" MODIFIED="1652878145910" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Comparing the results of a fully-automatic and a
    </p>
    <p>
      semi-automatic deception detection system
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1618595050108" ID="ID_801076736" MODIFIED="1622552078176" POSITION="left" TEXT="concludes that">
<node CREATED="1618595058137" HGAP="24" ID="ID_971574549" MODIFIED="1652878148974" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      RF classifier is the best classifier for linguistic and acoustic features, while<br />the NN performs best with the visual features<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595058137" ID="ID_1157702673" MODIFIED="1652878353519" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      For the acoustic features, the best performing feature is the pitch standard deviation<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595058137" HGAP="21" ID="ID_1645223755" MODIFIED="1628884103845" STYLE="bubble" VSHIFT="-1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      For the linguistic features, the classifier built with the unigram features outperformed<br />both LIWC features alone and its combination with LIWC features<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595058137" HGAP="21" ID="ID_1190394276" MODIFIED="1628884105814" STYLE="bubble" VSHIFT="-3">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      For the linguistic features, the classifier built with the unigram features outperformed<br />both LIWC features alone and its combination with LIWC features<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1621615152253" ID="ID_100920964" MODIFIED="1621615331378" POSITION="right" TEXT="hypothesizes that">
<node CREATED="1621615163848" ID="ID_251113237" MODIFIED="1652878183672" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Subject-level deception detection may be more
    </p>
    <p>
      in line with the Real-life Trial Deception Detection Dataset
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
