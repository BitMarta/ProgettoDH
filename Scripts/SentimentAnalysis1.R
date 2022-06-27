library(syuzhet)
library(tidyverse)
library(reshape2)

# Sentiment Analysis

# Carica Corpora
load("Corpora/TwitterB.RData")

# Analisi dei sentimenti in un testo
get_nrc_sentiment(my_df$text[1])

# Analisi dei sentimenti su tutti i testi
emotion_values <- data.frame()

# iterare su tutti i testi
for(i in 1:length(my_df$text)){
  
  emotion_values <- rbind(emotion_values, get_nrc_sentiment(my_df$text[i]))
  if(i %% 100 == 0)
    print(i/length(my_df$text))
  
}

# Normalizzare la lunghezza
my_df$length <- lengths(strsplit(my_df$text, "\\W"))

# Iterare su tutte le review
for(i in 1:length(my_df$text)){
  
  emotion_values[i,] <- emotion_values[i,]/my_df$length[i]
  
}

# Unire i dataframe
my_df <- cbind(my_df, emotion_values)

my_df$text <- NULL
my_df$length <- NULL

# Creazione barplot 1
my_df_mean <- my_df %>%
  group_by(search) %>%
  summarise_all(list(mean = mean))

my_df_mean <- melt(my_df_mean)

# Visualizza Plot
p1 <- ggplot(my_df_mean, aes(x=variable, y=value, fill=search))+
  geom_bar(stat="identity", position = "dodge")+
  theme(axis.text.x = element_text(angle = 90, hjust=1))
p1

# Salva plot
ggsave(p1, filename = "Figures/1.Sentiment_analysis/Twitter_plot_01.png", height = 9, width = 16, scale = 0.5)

# Creazione boxplot 2
my_df <- melt(my_df)

p2 <- ggplot(my_df, aes(x=variable, y=value, fill=search))+
  geom_boxplot(position = "dodge")+
  theme(axis.text.x = element_text(angle = 90, hjust=1))
p2

# Salva plot
ggsave(p2, filename = "Figures/1.Sentiment_analysis/Twitter_plot_02.png", height = 9, width = 16, scale = 0.5)
