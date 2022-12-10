# TurkishSentiment-Words
- 👋 Hi, I’m Darmawan Wicaksono, PhD student from Social Sciences University of Ankara/ Ankara Sosyal Bilimler Üniversitesi (ASBU) 
- 👀 I’m interested in text analysis
- 📫 How to reach me, darmawan.wicaksono@student.asbu.edu.tr

These TurkishSentiment-Words are taken from the [turkish_sentiliteralnet.xml](https://github.com/StarlangSoftware/TurkishSentiNet/blob/master/src/main/resources/turkish_sentiliteralnet.xml) file on [TurkishSentiNet](https://github.com/StarlangSoftware/TurkishSentiNet) made by Professor Olcay Taner YILDIZ from Özyeğin University. The xml file is extracted using R into two csv files which contain lists of positive and negative words in Turkish. This extraction is useful for sentiment analysis in [NodeXL](https://www.smrfoundation.org/nodexl/) applications from SMRFoundation.

How to use positive and negative words list in NodeXL:
1. In the NodeXL, go to Graph Metrics -> Word & Word Pairs and you can edit the "Sentiment Analysis" list.
2. Put the content of the word column from positive.csv into -> List 1: Positive.
3. Put the content of the word column from negative.csv into -> List 2: Negative.
4. Then click OK
