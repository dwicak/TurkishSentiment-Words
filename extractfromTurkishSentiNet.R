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