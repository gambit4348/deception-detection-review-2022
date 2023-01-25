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
<node CREATED="1612995856475" HGAP="39" ID="ID_1162388674" MODIFIED="1652789670364" POSITION="right" TEXT="was published in" VSHIFT="65">
<node CREATED="1613073545644" ID="ID_961074691" MODIFIED="1622550566278" STYLE="bubble" TEXT="2019"/>
</node>
<node CREATED="1613039826013" HGAP="29" ID="ID_1687566837" MODIFIED="1621882140212" POSITION="right" TEXT="uses a dataset" VSHIFT="1">
<node CREATED="1613040138681" HGAP="25" ID="ID_1186329212" MODIFIED="1652789664848" STYLE="bubble" TEXT="with 286 examples" VSHIFT="4"/>
<node CREATED="1613040155698" HGAP="23" ID="ID_1751447797" MODIFIED="1628876238679" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from some political claims existing in the CT-FCC-18 corpus<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1613040410819" HGAP="26" ID="ID_376667968" MODIFIED="1628876240632" STYLE="bubble" TEXT="manually annotated with 3 classes: true/half-true/false" VSHIFT="-2"/>
<node CREATED="1612995877928" HGAP="34" ID="ID_851863342" MODIFIED="1628876246041" STYLE="bubble" TEXT="Composed" VSHIFT="-15">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1621614933981" STYLE="fork" TEXT="by">
<node CREATED="1613473273471" ID="ID_1609359982" MODIFIED="1628876225010" STYLE="bubble" TEXT="textual cues" VSHIFT="12">
<node CREATED="1613476295226" HGAP="24" ID="ID_1972592699" MODIFIED="1628876341345" STYLE="fork" TEXT="described by" VSHIFT="-6">
<node CREATED="1613476305018" HGAP="33" ID="ID_550668080" MODIFIED="1652789650958" STYLE="bubble" TEXT="64 LIWC category features" VSHIFT="4">
<node CREATED="1613679687313" HGAP="21" ID="ID_1589414854" MODIFIED="1628876282136" STYLE="fork" TEXT="uses tool" VSHIFT="-7">
<node CREATED="1613682079785" HGAP="14" ID="ID_902747557" MODIFIED="1628876313971" STYLE="bubble" TEXT="LIWC" VSHIFT="9"/>
</node>
</node>
<node CREATED="1613476305018" HGAP="32" ID="ID_1895175903" MODIFIED="1654088821929" STYLE="bubble" TEXT="768 BERT features" VSHIFT="-2">
<node CREATED="1613679687313" HGAP="21" ID="ID_962004111" MODIFIED="1628876282136" STYLE="fork" TEXT="uses tool" VSHIFT="-7">
<node CREATED="1613682079785" HGAP="18" ID="ID_1871258568" MODIFIED="1628876350579" STYLE="bubble" TEXT="BERT" VSHIFT="11"/>
</node>
</node>
<node CREATED="1613476305018" HGAP="31" ID="ID_61834317" MODIFIED="1628876356079" STYLE="bubble" TEXT="TF.IDF n-gram features" VSHIFT="-10"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="14" ID="ID_1040673932" MODIFIED="1628876230522" STYLE="bubble" TEXT="vocal cues">
<node CREATED="1613476295226" HGAP="21" ID="ID_1035275013" MODIFIED="1628876339063" STYLE="fork" TEXT="described by" VSHIFT="-3">
<node CREATED="1613476305018" HGAP="22" ID="ID_402151113" MODIFIED="1652789655723" STYLE="bubble" TEXT="6373 INTERSPEECH 2013  features" VSHIFT="4">
<node CREATED="1613679687313" HGAP="21" ID="ID_1740679054" MODIFIED="1628876282136" STYLE="fork" TEXT="uses tool" VSHIFT="-7">
<node CREATED="1613682079785" HGAP="19" ID="ID_170627245" MODIFIED="1628876321220" STYLE="bubble" TEXT="OpenSMILE" VSHIFT="7"/>
</node>
</node>
<node CREATED="1613476305018" HGAP="24" ID="ID_344395834" MODIFIED="1652789657662" STYLE="bubble" TEXT="600 i-vector  features" VSHIFT="-1"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="21" ID="ID_1421862511" MODIFIED="1628865707045" STYLE="bubble" TEXT="demography cues" VSHIFT="-4">
<node CREATED="1613476295226" HGAP="24" ID="ID_560664030" MODIFIED="1628876335751" STYLE="fork" TEXT="described by" VSHIFT="-5">
<node CREATED="1613476305018" HGAP="22" ID="ID_1228826088" MODIFIED="1628865702858" STYLE="bubble" TEXT="1 claim author feature" VSHIFT="6"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="25" ID="ID_1196706136" MODIFIED="1621614997784" POSITION="left" TEXT="applies method" VSHIFT="7">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1654088783587" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Neural Network
    </p>
    <p>
      (Multi-input)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1613681828801" ID="ID_715802616" MODIFIED="1621882249203" STYLE="fork" TEXT="with accuracy of">
<node CREATED="1613681834136" ID="ID_1617614970" MODIFIED="1623239030723" STYLE="bubble" TEXT="0.5104"/>
</node>
<node CREATED="1613681828801" ID="ID_782880730" MODIFIED="1648232757788" STYLE="fork" TEXT="with F1-score of">
<node CREATED="1613681834136" ID="ID_187493683" MODIFIED="1648232765773" STYLE="bubble" TEXT="0.4507"/>
</node>
</node>
</node>
<node CREATED="1618592872925" ID="ID_1561590355" MODIFIED="1628866774269" POSITION="left" TEXT="contributes by" VSHIFT="-1">
<node CREATED="1618592894401" HGAP="24" ID="ID_102076440" MODIFIED="1652789677879" STYLE="bubble" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Building the first multi-modal dataset for fact-checking<br />the claims made in a political debate<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" HGAP="23" ID="ID_719530229" MODIFIED="1654088774089" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Developing a multimodal multi-input neural network classifier
    </p>
    <p>
      based on textual and acoustic information<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1618595050108" ID="ID_801076736" MODIFIED="1654088811226" POSITION="left" TEXT="concludes that" VSHIFT="-10">
<node CREATED="1618595058137" HGAP="21" ID="ID_971574549" MODIFIED="1652789673660" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The multimodal dataset for fact checking of claims in a political debate
    </p>
    <p>
      is effective to outperform the current baselines<br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" />
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1621615152253" HGAP="27" ID="ID_100920964" MODIFIED="1628865966189" POSITION="right" TEXT="hypothesizes that" VSHIFT="-25">
<node CREATED="1621615163848" ID="ID_251113237" MODIFIED="1623238112237" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Acoustic features can be combined with textual features to
    </p>
    <p>
      build a better classifier for fact-checking and deception detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
