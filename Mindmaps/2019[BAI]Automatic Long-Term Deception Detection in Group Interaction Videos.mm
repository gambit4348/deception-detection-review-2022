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
<node CREATED="1613073545644" ID="ID_961074691" MODIFIED="1652786697562" STYLE="bubble" TEXT="2019" VSHIFT="6"/>
</node>
<node CREATED="1613039826013" HGAP="29" ID="ID_1687566837" MODIFIED="1621882140212" POSITION="right" TEXT="uses a dataset" VSHIFT="1">
<node CREATED="1613040138681" HGAP="23" ID="ID_1186329212" MODIFIED="1652786713061" STYLE="bubble" TEXT="with 285 examples" VSHIFT="-1"/>
<node CREATED="1613040155698" HGAP="24" ID="ID_1751447797" MODIFIED="1652786703616" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from sessions of the online game Resistance
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1613040410819" HGAP="25" ID="ID_376667968" MODIFIED="1652786706583" STYLE="bubble" TEXT="manually annotated with 2 classes: truth/lie" VSHIFT="-1"/>
<node CREATED="1612995877928" HGAP="25" ID="ID_851863342" MODIFIED="1621614929695" STYLE="bubble" TEXT="Composed" VSHIFT="-5">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1621614933981" STYLE="fork" TEXT="by">
<node CREATED="1613473273471" ID="ID_1609359982" MODIFIED="1628854117984" STYLE="bubble" TEXT="visual cues" VSHIFT="-3">
<node CREATED="1613476295226" ID="ID_1972592699" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_550668080" MODIFIED="1622569420667" STYLE="bubble" TEXT="eye and head estimation features">
<node CREATED="1628853941890" ID="ID_334606986" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="18" ID="ID_990826840" MODIFIED="1628854102493" STYLE="bubble" TEXT="OpenFace" VSHIFT="6"/>
</node>
</node>
<node CREATED="1613476305018" ID="ID_1874419345" MODIFIED="1622569416007" STYLE="bubble" TEXT="VGGFace features">
<node CREATED="1628853941890" ID="ID_1014581531" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" ID="ID_1677992454" MODIFIED="1628854084707" STYLE="bubble" TEXT="VGGFace" VSHIFT="5"/>
</node>
</node>
<node CREATED="1613476305018" ID="ID_1502127030" MODIFIED="1622569444691" STYLE="bubble" TEXT="Facial Action Unit features">
<node CREATED="1628853941890" ID="ID_330067397" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="18" ID="ID_496497356" MODIFIED="1628854082644" STYLE="bubble" TEXT="VGGFace" VSHIFT="3"/>
</node>
</node>
<node CREATED="1613476305018" ID="ID_635325409" MODIFIED="1622569598506" STYLE="bubble" TEXT="1 emotion feature">
<node CREATED="1628853941890" ID="ID_393388086" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="17" ID="ID_1551406258" MODIFIED="1628854055185" STYLE="bubble" TEXT="Amazon Rekognition" VSHIFT="4"/>
</node>
</node>
<node CREATED="1613476305018" ID="ID_1650472428" MODIFIED="1622569675129" STYLE="bubble" TEXT="3 facial landmark features">
<node CREATED="1628853941890" ID="ID_1784977492" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="17" ID="ID_1125529266" MODIFIED="1628854053076" STYLE="bubble" TEXT="Amazon Rekognition" VSHIFT="2"/>
</node>
</node>
</node>
</node>
<node CREATED="1613473273471" HGAP="18" ID="ID_791299072" MODIFIED="1628639914812" STYLE="bubble" TEXT="vocal cues" VSHIFT="-9">
<node CREATED="1613476295226" ID="ID_1679385389" MODIFIED="1621614959647" STYLE="fork" TEXT="described by">
<node CREATED="1613476305018" ID="ID_820624003" MODIFIED="1622569726295" STYLE="bubble" TEXT="MFCC features">
<node CREATED="1628853941890" ID="ID_757344854" MODIFIED="1628853952344" STYLE="fork" TEXT="extracted by">
<node CREATED="1613682079785" HGAP="19" ID="ID_134950069" MODIFIED="1628854114374" STYLE="bubble" TEXT="Amazon Rekognition" VSHIFT="4"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="23" ID="ID_1196706136" MODIFIED="1652786737686" POSITION="left" TEXT="applies method" VSHIFT="18">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1622572780158" STYLE="bubble" TEXT="Combined classifiers">
<node CREATED="1613681828801" ID="ID_715802616" MODIFIED="1628854778931" STYLE="fork" TEXT="with AUC of">
<node CREATED="1613681834136" ID="ID_1617614970" MODIFIED="1622572785324" STYLE="bubble" TEXT="0.705"/>
</node>
<node CREATED="1613681828801" ID="ID_1247969554" MODIFIED="1648231409948" STYLE="fork" TEXT="with F1-score of">
<node CREATED="1613681834136" ID="ID_1460769194" MODIFIED="1648231415549" STYLE="bubble" TEXT="0.466"/>
</node>
<node CREATED="1613681828801" ID="ID_886700799" MODIFIED="1648231421381" STYLE="fork" TEXT="with precision of">
<node CREATED="1613681834136" ID="ID_1223785098" MODIFIED="1648231427477" STYLE="bubble" TEXT="0.666"/>
</node>
<node CREATED="1613681828801" ID="ID_747294537" MODIFIED="1648231432913" STYLE="fork" TEXT="with recall of">
<node CREATED="1613681834136" ID="ID_1758634352" MODIFIED="1648231439906" STYLE="bubble" TEXT="0.379"/>
</node>
</node>
</node>
<node CREATED="1618592872925" HGAP="22" ID="ID_1561590355" MODIFIED="1652786749071" POSITION="left" TEXT="contributes with" VSHIFT="-3">
<node CREATED="1618592894401" HGAP="26" ID="ID_102076440" MODIFIED="1652786734721" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Proposing a deception detection method capable
    </p>
    <p>
      of detection liars in a long-term many people interaction
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" ID="ID_719530229" MODIFIED="1622568564900" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Introducing a classifier based on histogram-level features
    </p>
    <p>
      and a novel class of metafeature named LiarRank
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" ID="ID_918103207" MODIFIED="1628854298423" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Building a dataset collected from players of
    </p>
    <p>
      three different countries
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1618595050108" HGAP="25" ID="ID_801076736" MODIFIED="1652786723263" POSITION="left" TEXT="concludes that" VSHIFT="-27">
<node CREATED="1618595058137" HGAP="22" ID="ID_971574549" MODIFIED="1652786745016" STYLE="bubble" VSHIFT="-6">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The combined classifier model proposed provides an
    </p>
    <p>
      improvement in deception detection in groups
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1621615152253" ID="ID_100920964" MODIFIED="1621615331378" POSITION="right" TEXT="hypothesizes that">
<node CREATED="1621615163848" HGAP="21" ID="ID_251113237" MODIFIED="1652786717688" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Facial Action Units mixed with audio feature and novel
    </p>
    <p>
      feature classes can be used for deception detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
