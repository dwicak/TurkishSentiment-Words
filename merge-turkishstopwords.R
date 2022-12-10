# Merge two Turkish stopwords from SWNetTR and stopwords-iso

# Read the contents of the files
text1 <- readLines("StopWordListTR.txt")
text2 <- readLines("stopwords-tr.txt")

# Merge text
merged_text <- paste(text1, text2, sep="\n")
write(merged_text, "merged_stopwords.txt")
merged_text <- readLines("merged_stopwords.txt")

# Split the text into individual words
words <- unlist(strsplit(merged_text, "\\s+"))

# Remove duplicates and sort the words alphabetically
unique_words <- unique(words)

# Merge the unique words into a single character string
merged_unique_text <- paste(unique_words, sep="\n")

write(merged_unique_text, "merged_stopwordsclean.txt")

text <- readLines("merged_stopwordsclean.txt")

# Split the text into individual words
words <- unlist(strsplit(text, "\\s+"))

# Sort the words alphabetically
sorted_words <- sort(words)

writeLines(sorted_words, "sortedmerged_stopwordsclean.txt")
