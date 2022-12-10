# TurkishSentiment-Words

These TurkishSentiment-Words are taken from the [turkish_sentiliteralnet.xml](https://github.com/StarlangSoftware/TurkishSentiNet/blob/master/src/main/resources/turkish_sentiliteralnet.xml) file on [TurkishSentiNet](https://github.com/StarlangSoftware/TurkishSentiNet) made by Professor Olcay Taner YILDIZ from Özyeğin University. The xml file is extracted using R into two text files which contain lists of positive and negative words in Turkish. This extraction is useful for sentiment analysis in [NodeXL](https://www.smrfoundation.org/nodexl/) applications from SMRFoundation.

How to use positive and negative words list in NodeXL:
1. In the NodeXL, go to Graph Metrics -> Word & Word Pairs and you can edit the "Sentiment Analysis" list.
2. Copy the content of positive.txt into -> List 1: Positive.
3. Copy the content of negative.txt into -> List 2: Negative.
4. Then click OK

For Turkish stopwords, we can use [merged_swnettrandstopwords-tr](https://github.com/dwicak/TurkishSentiment-Words/blob/main/merged_swnettrandstopwords-tr.txt) which is a combination of [SWNetTR stopwords](https://github.com/swnettr/SWNetTR/blob/master/ref.StopWordListTR.csv) and [stopwords-tr](https://github.com/stopwords-iso/stopwords-tr/blob/master/stopwords-tr.txt) taken from stopwords-iso.
