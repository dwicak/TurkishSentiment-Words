# Merge two Turkish stopwords from SWNetTR and stopwords-iso
# Get ref.StopWordListTR.csv file from https://github.com/swnettr/SWNetTR/blob/master/ref.StopWordListTR.csv
# Get stopwords-tr.txt file from https://github.com/stopwords-iso/stopwords-tr/blob/master/stopwords-tr.txt

# Convert ref.StopWordListTR.csv into StopWordListTR.txt
data <- read.csv("ref.StopWordListTR.csv")
write.table(data, "StopWordListTR.txt", sep = "\t")

# Read the contents of the files
text1 <- readLines("StopWordListTR.txt")
text2 <- readLines("stopwords-tr.txt")

# Merge text
merged_text <- paste(text1, text2, sep="\n")

# Split the text into individual words
words <- unlist(strsplit(merged_text, "\\s+"))

# Remove duplicates
unique_words <- unique(words)

# Merge the unique words into a single character string
merged_unique_text <- paste(unique_words, sep="\n")

# Split the text into individual words
words <- unlist(strsplit(merged_unique_text, "\\s+"))

# Sort the words alphabetically
sorted_words <- sort(words)

# Write text into text file
writeLines(sorted_words, "TurkishSentiment-Stopwords.txt")
