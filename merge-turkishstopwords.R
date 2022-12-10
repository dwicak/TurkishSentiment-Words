# Merge two turkish stopwords from SWNetTR and stopwords-iso

text1 <- readLines("StopWordListTR.txt")
text2 <- readLines("stopwords-tr.txt")

merged_text <- paste(text1, text2, sep="\n")
write(merged_text, "merged_stopwords.txt")

merged_text <- readLines("merged_stopwords.txt")
words <- unlist(strsplit(merged_text, "\\s+"))

unique_words <- unique(words)
merged_unique_text <- paste(unique_words, sep="\n")
write(merged_unique_text, "merged_stopwordsclean.txt")

text <- readLines("merged_stopwordsclean.txt")

words <- unlist(strsplit(text, "\\s+"))

sorted_words <- sort(words)
writeLines(sorted_words, "sortedmerged_stopwordsclean.txt")