# This code is used to extract positive and negative word lists from TurkishSentiNet into a text file
# Get turkish_sentiliteralnet.xml file from https://github.com/StarlangSoftware/TurkishSentiNet/blob/master/src/main/resources/turkish_sentiliteralnet.xml
# Load the xml2, readr, and dplyr package. If you don't have the package, install it first
library(xml2)
library(readr)
library(dplyr)

# Read the XML file
xml_file <- read_xml("turkish_sentiliteralnet.xml")

# Parse the XML and extract the word, pscore, and nscore
words <- xml_file %>% xml_find_all("//NAME") %>% xml_text()
pscores <- xml_file %>% xml_find_all("//PSCORE") %>% xml_text()
nscores <- xml_file %>% xml_find_all("//NSCORE") %>% xml_text()

# Check the pscore and nscore and assign the sentiment
sentiments <- ifelse(as.numeric(pscores) > 0, "positive",
                     ifelse(as.numeric(nscores) > 0, "negative",
                            "neutral"))

# Create a data frame with the words and sentiments
df <- data.frame(word = words, sentiment = sentiments)

# Write the positive and negative words to separate CSV files
write_csv(df[df$sentiment == "positive", ], "positive.csv")
write_csv(df[df$sentiment == "negative", ], "negative.csv")
write_csv(df[df$sentiment == "neutral", ], "neutral.csv")

# Read the positive and negative CSV files
positive_words <- read_csv("positive.csv")
negative_words <- read_csv("negative.csv")
neutral_words <- read_csv("neutral.csv")

# Extract the word column and write it to separate text files
write_lines(positive_words$word, "positive.txt")
write_lines(negative_words$word, "negative.txt")
write_lines(neutral_words$word, "neutral.txt")

# read in the text file
text1 <- readLines("positive.txt")
text2 <- readLines("negative.txt")
text3 <- readLines("neutral.txt")

# Add quotation marks to each line
text_with_quotes1 <- paste0('"', text1, '"')
text_with_quotes2 <- paste0('"', text2, '"')
text_with_quotes3 <- paste0('"', text3, '"')

# Save the data to a text file
writeLines(text_with_quotes1, "turkishsentinet-positive.txt")
writeLines(text_with_quotes2, "turkishsentinet-negative.txt")
writeLines(text_with_quotes3, "turkishsentinet-neutral.txt")
