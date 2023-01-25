<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1612995774812" ID="ID_1608470301" MODIFIED="1621880992457">
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
<node CREATED="1613073545644" HGAP="21" ID="ID_961074691" MODIFIED="1652442192597" STYLE="bubble" TEXT="2018" VSHIFT="4"/>
</node>
<node CREATED="1613039826013" HGAP="24" ID="ID_1687566837" MODIFIED="1652442203472" POSITION="right" TEXT="uses a dataset" VSHIFT="4">
<node CREATED="1613040138681" HGAP="23" ID="ID_1186329212" MODIFIED="1652442117705" STYLE="bubble" TEXT="with 4100 examples" VSHIFT="3"/>
<node CREATED="1613040155698" HGAP="22" ID="ID_1751447797" MODIFIED="1652442657790" STYLE="bubble" VSHIFT="4">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from a subset of CSC Deceptive Speech (utterances not shorter than five words)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1613040410819" HGAP="24" ID="ID_376667968" MODIFIED="1652442589198" STYLE="bubble" TEXT="manually annotated with 2 classes: truthful/deceptive"/>
<node CREATED="1612995877928" HGAP="22" ID="ID_851863342" MODIFIED="1628259551445" STYLE="bubble" TEXT="Composed" VSHIFT="-8">
<node CREATED="1612996218380" ID="ID_1084427426" MODIFIED="1621882084699" STYLE="fork" TEXT="by">
<node CREATED="1613473273471" ID="ID_839491458" MODIFIED="1652442584073" STYLE="bubble" TEXT="textual cues" VSHIFT="21">
<node CREATED="1613476295226" HGAP="27" ID="ID_911296755" MODIFIED="1652442123314" STYLE="fork" TEXT="described by" VSHIFT="1">
<node CREATED="1613476305018" ID="ID_390002509" MODIFIED="1654085743353" STYLE="bubble" TEXT="30 Continuous bag-of-words features" VSHIFT="5"/>
</node>
<node CREATED="1613476295226" HGAP="31" ID="ID_336575370" MODIFIED="1618594656680" STYLE="fork" TEXT="language is" VSHIFT="-4">
<node CREATED="1613476305018" HGAP="17" ID="ID_1352465731" MODIFIED="1652442178090" STYLE="bubble" TEXT="English" VSHIFT="7"/>
</node>
<node CREATED="1613679687313" HGAP="22" ID="ID_185597529" MODIFIED="1652442125613" STYLE="fork" TEXT="extracted by" VSHIFT="-10">
<node CREATED="1613682079785" HGAP="26" ID="ID_571699838" MODIFIED="1628260498396" STYLE="bubble" TEXT="Word2Vec" VSHIFT="7"/>
</node>
</node>
<node CREATED="1613473273471" HGAP="21" ID="ID_1609359982" MODIFIED="1652442581730" STYLE="bubble" TEXT="vocal cues" VSHIFT="-12">
<node CREATED="1613476295226" HGAP="22" ID="ID_1972592699" MODIFIED="1652442572638" STYLE="fork" TEXT="described by" VSHIFT="11">
<node CREATED="1613476305018" ID="ID_550668080" MODIFIED="1652442183285" STYLE="bubble" TEXT="384 features" VSHIFT="5"/>
</node>
<node CREATED="1613679687313" HGAP="23" ID="ID_1573472668" MODIFIED="1652442570776" STYLE="fork" TEXT="extracted by" VSHIFT="2">
<node CREATED="1613682079785" HGAP="26" ID="ID_1389158472" MODIFIED="1628260142021" STYLE="bubble" TEXT="OpenSMILE" VSHIFT="7"/>
</node>
<node CREATED="1613476295226" HGAP="26" ID="ID_1613800224" MODIFIED="1652442574528" STYLE="fork" TEXT="language is" VSHIFT="-23">
<node CREATED="1613476305018" ID="ID_1775137211" MODIFIED="1652442186538" STYLE="bubble" TEXT="English" VSHIFT="5"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1613039971343" HGAP="25" ID="ID_1196706136" MODIFIED="1621882219794" POSITION="left" TEXT="applies method" VSHIFT="7">
<node CREATED="1613074729144" ID="ID_1280422780" MODIFIED="1654085723371" STYLE="bubble" VSHIFT="5">
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
<node CREATED="1613681828801" ID="ID_715802616" MODIFIED="1621882239726" STYLE="fork" TEXT="with accuracy of">
<node CREATED="1613681834136" ID="ID_1617614970" MODIFIED="1621887034041" STYLE="bubble" TEXT="0.64"/>
</node>
<node CREATED="1613681828801" ID="ID_1438763600" MODIFIED="1648210827085" STYLE="fork" TEXT="with F1-score of">
<node CREATED="1613681834136" ID="ID_333147416" MODIFIED="1648210833143" STYLE="bubble" TEXT="0.609"/>
</node>
<node CREATED="1613681828801" ID="ID_417964802" MODIFIED="1648210839570" STYLE="fork" TEXT="with precision of">
<node CREATED="1613681834136" ID="ID_1209497228" MODIFIED="1648210844382" STYLE="bubble" TEXT="0.667"/>
</node>
<node CREATED="1613681828801" ID="ID_1664759094" MODIFIED="1648210850758" STYLE="fork" TEXT="with recall of">
<node CREATED="1613681834136" HGAP="24" ID="ID_1937652959" MODIFIED="1652442153988" STYLE="bubble" TEXT="0.56" VSHIFT="6"/>
</node>
<node CREATED="1613679687313" HGAP="21" ID="ID_46057767" MODIFIED="1648210819723" STYLE="fork" TEXT="provided by" VSHIFT="-7">
<node CREATED="1613682079785" HGAP="22" ID="ID_39177557" MODIFIED="1652442152473" STYLE="bubble" TEXT="Keras/Theano" VSHIFT="6"/>
</node>
</node>
</node>
<node CREATED="1618592872925" HGAP="31" ID="ID_1561590355" MODIFIED="1652442166301" POSITION="left" TEXT="contributes with" VSHIFT="-7">
<node CREATED="1618592894401" HGAP="23" ID="ID_102076440" MODIFIED="1652442305395" STYLE="bubble" VSHIFT="5">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Exploring the combination of lexical and vocal features
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" ID="ID_719530229" MODIFIED="1652442333180" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Comparing lexical-only, vocal-only and combined approaches
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" ID="ID_512009174" MODIFIED="1652442409086" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Comparing the accuracy of computer and human Deception Detection
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618592894401" ID="ID_1302455551" MODIFIED="1652442466235" STYLE="bubble" VSHIFT="-5">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Evaluating of bigram extracted by FastText for Deception Detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1618595050108" HGAP="29" ID="ID_801076736" MODIFIED="1654085734456" POSITION="left" TEXT="conclusions are" VSHIFT="-39">
<node CREATED="1618595058137" HGAP="21" ID="ID_971574549" MODIFIED="1652442490095" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Machine Learning classifiers outperforms humans on Deception Detection
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1618595110693" ID="ID_1815652633" MODIFIED="1652442537668" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Vocal and verbal features combined provide a higher detection accuracy
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1621615152253" HGAP="22" ID="ID_100920964" MODIFIED="1652442199034" POSITION="right" TEXT="hypothesizes that" VSHIFT="-27">
<node CREATED="1621615163848" ID="ID_251113237" MODIFIED="1652442598817" STYLE="bubble" VSHIFT="13">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Deception can be detected by supervised Machine Learning algorithms
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1621881673008" HGAP="19" ID="ID_449883102" MODIFIED="1652442555282" STYLE="bubble" VSHIFT="-6">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Emotion scores estimated from speech are effective for deception detection
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
