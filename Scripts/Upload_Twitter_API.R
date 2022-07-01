install.packages("tidyverse")

library(tidyverse)

# leggi il csv in un dataframe
my_df <- read.csv("Corpora/BridgertonTweet.csv", stringsAsFactors = F)

# Presa visione del dataframe
View(my_df)

# Visione dei metadata
colnames(my_df)

# Conteggio tweet per lingua
my_df %>% count(lang)

# Filtra il lignuaggio 
en_df <- my_df %>% filter(lang == "en")

# Esplra il dataframe in inglese
View(en_df)