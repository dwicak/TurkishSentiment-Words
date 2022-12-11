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

# Write the positive and negative words to separate text files
write_lines(df[df$sentiment == "positive", ], "turkishsentinet-positive.txt")
write_lines(df[df$sentiment == "negative", ], "turkishsentinet-negative.txt")

# read in the text file
text1 <- readLines("turkishsentinet-positive.txt")
text2 <- readLines("turkishsentinet-negative.txt")

# Add quotation marks to each line
text_with_quotes1 <- paste0('"', text1, '"')
text_with_quotes2 <- paste0('"', text2, '"')

# Save the data to a text file
writeLines(text_with_quotes1, "turkishsentinet-positive.txt")
writeLines(text_with_quotes2, "turkishsentinet-negative.txt")
