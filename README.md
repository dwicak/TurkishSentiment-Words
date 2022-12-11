# TurkishSentiment-Words

TurkishSentiment-Words and Turkish Stopwords are made to run sentiment analysis in the [NodeXL](https://www.smrfoundation.org/nodexl/) application from SMRFoundation in Turkish, because NodeXL does not provide them by default. There are two set lists of positive and negative Turkish words in use. The first is from the [SWNetTR++.csv](https://github.com/swnettr/SWNetTR/blob/master/SWNetTR%2B%2B.csv) file on [SWNetTR++](https://github.com/swnettr/SWNetTR) created by Fatih SAĞLAM from Ufuk University and the second is taken from the [turkish_sentiliteralnet.xml](https://github.com/StarlangSoftware/TurkishSentiNet/blob/master/src/main/resources/turkish_sentiliteralnet.xml) file on [TurkishSentiNet](https://github.com/StarlangSoftware/TurkishSentiNet) created by Professor Olcay Taner YILDIZ from Özyeğin University. The turkish_sentiliteralnet.xml file was extracted using R into two text files containing positive and negative lists of Turkish words, as well as the SWNetTR++.csv file.

How to use positive and negative words list in NodeXL:
1. In the NodeXL, go to Graph Metrics -> Word & Word Pairs, and you can edit the "Sentiment Analysis" list.
2. Copy the content of [swnettr-positive.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/swnettr-positive.txt) or [turkishsentinet-positive.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/turkishsentinet-positive.txt) into -> List 1: Positive.
3. Copy the content of [swnettr-negative.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/swnettr-negative.txt) or [turkishsentinet-negative.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/turkishsentinet-negative.txt) into -> List 2: Negative.
4. Then click OK

For Turkish stopwords, we can use [TurkishSentiment-Stopwords](https://github.com/dwicak/TurkishSentiment-Words/blob/main/TurkishSentiment-Stopwords.txt) which is a combination of [SWNetTR stopwords](https://github.com/swnettr/SWNetTR/blob/master/ref.StopWordListTR.csv) and [stopwords-tr](https://github.com/stopwords-iso/stopwords-tr/blob/master/stopwords-tr.txt) taken from stopwords-iso.
