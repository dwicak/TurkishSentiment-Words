# Merge four Turkish sentiment words into two text files
# Get swnettr-positive.txt file from https://github.com/dwicak/TurkishSentiment-Words/blob/main/swnettr-positive.txt
# Get turkishsentinet-positive.txt file from https://github.com/dwicak/TurkishSentiment-Words/blob/main/turkishsentinet-positive.txt
# Get swnettr-negative.txt file from https://github.com/dwicak/TurkishSentiment-Words/blob/main/swnettr-negative.txt
# Get turkishsentinet-negative.txt file from https://github.com/dwicak/TurkishSentiment-Words/blob/main/turkishsentinet-negative.txt

# Read the contents of the first file
file1 <- readLines("swnettr-positive.txt")
file2 <- readLines("turkishsentinet-positive.txt")
file3 <- readLines("swnettr-negative.txt")
file4 <- readLines("turkishsentinet-negative.txt")

# Concatenate the contents of the two files
combined1 <- c(file1, file2)
combined2 <- c(file3, file4)

# Eliminate duplicate lines from the combined text
unique_lines1 <- unique(combined1)
unique_lines2 <- unique(combined2)

# Remove quotation marks from the combined text
no_quotes1 <- gsub('"', '', unique_lines1)
no_quotes2 <- gsub('"', '', unique_lines2)

# Add quotation marks to each line
text_with_quotes1 <- paste0('"', no_quotes1, '"')
text_with_quotes2 <- paste0('"', no_quotes2, '"')

# Sort the words alphabetically
text_with_quotes1 <- sort(text_with_quotes1)
text_with_quotes2 <- sort(text_with_quotes2)

# Save the data to a text file
writeLines(text_with_quotes1, "TurkishSentiment-positive.txt")
writeLines(text_with_quotes2, "TurkishSentiment-negative.txt")