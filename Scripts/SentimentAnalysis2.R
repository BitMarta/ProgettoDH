# Sentiment analysis with syuzhet: how does it work?

# download the sentiment dictionaries included in Syuzhet
download.file("https://github.com/mjockers/syuzhet/raw/master/R/sysdata.rda", destfile = "Corpora/syuzhet_dict.RData")
load("Corpora/syuzhet_dict.RData")
