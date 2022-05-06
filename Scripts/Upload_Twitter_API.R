install.packages("tidyverse")

library(tidyverse)

# read the csv into a dataframe
my_df <- read.csv("Corpora/BridgertonTweet.csv", stringsAsFactors = F)

# explore the dataframe
View(my_df)

# see all available metadata
colnames(my_df)

# count tweets per language
my_df %>% count(lang)

# filter by language
en_df <- my_df %>% filter(lang == "en")

#explore the English dataframe
View(en_df)