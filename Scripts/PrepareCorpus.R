# PrepareCorpus

# Installare i pacchetti necessari
# install.packages("cld2")
library(cld2)

# install.packages("tidyverse")
library(tidyverse)

# Ricerca dei file con nome Bridgerton
all_twitter_files <- list.files(path = "Corpora", pattern = "Bridgerton", full.names = T)

# Creazione Dataframe
my_df <- read.csv(all_twitter_files[1], row.names = 1, stringsAsFactors = F)

# Selezionare solo il testo e la lingua
my_df <- my_df[,c("text", "lang")]
my_df$search <- "Bridgerton"

# Iterazione con gli altri file
if(length(all_twitter_files) > 1){
  
  for(i in 2:length(all_twitter_files)){
    
    # Legge il dataframe uno ad uno
    my_tmp_df <- read.csv(all_twitter_files[i], row.names = 1, stringsAsFactors = F)
    my_tmp_df <- my_tmp_df[,c("text", "lang")]
    my_tmp_df$search <- "Bridgerton"
    
    # Concatena
    my_df <- rbind(my_df, my_tmp_df)
    
  }
  
}

# Ignora "NA" tweets 
my_df <- my_df[!is.na(my_df$text),]

# Codici sulla lingua
my_df %>% count(lang)

# seleziona solo lingua inglese
my_df <- my_df %>% filter(lang == "en")

# Rimuove le info della lingua
my_df$lang <- NULL

# Salvataggio
save(my_df, file = "Corpora/TwitterB.RData")
