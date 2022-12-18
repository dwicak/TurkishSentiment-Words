# TurkishSentiment-Words

TurkishSentiment-Words and Turkish Stopwords are made to run sentiment analysis in the [NodeXL](https://www.smrfoundation.org/nodexl/) application from SMRFoundation in Turkish, because NodeXL does not provide them by default. Here two set lists of positive and negative Turkish words are combined. The first is from the [SWNetTR++.csv](https://github.com/swnettr/SWNetTR/blob/master/SWNetTR%2B%2B.csv) file on [SWNetTR++](https://github.com/swnettr/SWNetTR) created by Fatih SAĞLAM from Ufuk University and the second is taken from the [turkish_sentiliteralnet.xml](https://github.com/StarlangSoftware/TurkishSentiNet/blob/master/src/main/resources/turkish_sentiliteralnet.xml) file on [TurkishSentiNet](https://github.com/StarlangSoftware/TurkishSentiNet) created by Professor Olcay Taner YILDIZ from Özyeğin University. The turkish_sentiliteralnet.xml file was extracted using R into two text files containing positive and negative lists of Turkish words, as well as the SWNetTR++.csv file.

How to use positive and negative words list in NodeXL:
1. In the NodeXL, go to Graph Metrics -> Word & Word Pairs, and you can edit the "Sentiment Analysis" list.
2. Copy the content of [TurkishSentiment-positive.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/TurkishSentiment-positive.txt) into -> List 1: Positive.
3. Copy the content of [TurkishSentiment-negative.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/TurkishSentiment-negative.txt) into -> List 2: Negative.
4. Copy the content of [turkishsentinet-neutral.txt](https://github.com/dwicak/TurkishSentiment-Words/blob/main/turkishsentinet/turkishsentinet-neutral.txt) into -> List 3: Neutral.
5. Then click OK

For Turkish stopwords, we can use [TurkishSentiment-Stopwords](https://github.com/dwicak/TurkishSentiment-Words/blob/main/TurkishSentiment-Stopwords.txt) which is a combination of [SWNetTR stopwords](https://github.com/swnettr/SWNetTR/blob/master/ref.StopWordListTR.csv) and [stopwords-tr](https://github.com/stopwords-iso/stopwords-tr/blob/master/stopwords-tr.txt) taken from stopwords-iso.
