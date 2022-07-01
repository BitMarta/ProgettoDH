# ProgettoDH
Progetto per il Laboratorio Avanzato di Informatica Umanistica a cura del prof.Rebora.

**MATRICOLA:** VR447492
**STUDENTESSA:** Cafà Marta
## Descrizione progetto
Sentiment Analysis sulla serie tv "Bridgerton" con APItwitter.

Il mio repository è costituito da 3 cartelle principali:
### Corpora:
All'interno della cartella Corpora, si possono trovare 4 file CSV, che contengono la raccolta dei tweets, scaricati tramite un account Twitter Developer, in giorni alterni, per avere più varietà possibile di analisi. 
Infine è presente il file Rdata, che rappresenta il file principale che comprende tutti i 4 file CSV con tutti i tweets lavorati e pronti per essere analizzati negli script per il Sentiment Analysis.
### Script:
Il primo passaggio da fare è scaricare i tweets. Aprendo il blocco note con linguaggio Python "Twitter_API.ipynb" si possono osservare tutti i passaggi con descrizione. 
Una volta scaricati tutti i tweets necessari, bisogna preparare il corpora. I passaggi necessari vengono mostrati nello script "PrepareCorpus.R". Una volta creato il corpus principale cioè "TwitterB.RData" possiamo iniziare il Sentiment Analysis. 
Tramite lo script "SentimentAnalysis1.R" innanzitutto vengono chiamate le library essenziali alle analisi, precedentemente scaricate. Poi caricando il file "TwitterB.RData" si possono iniziare le analisi. Infine, i risultati delle analisi possono essere visibili anche tramite grafici. Nello script sono presenti due modi di creare grafici. 
Infine, con meno importanza, troviamo uno script chiamato "Upload_Twitter_API.R" con alcune prove e analisi iniziali con un file CSV. 
### Figures:
In questa cartella si possono trovare i due grafici che mostrano i risultati del Sentiment Analysis. 

#### Info aggiuntive:
Tramite .gitignore il corpora e i file Rdata vengono oscurati dall'account GitHub, per evitare problemi con la privacy dei tweets scaricati.  
Il corpora originale si può trovare nell'account OneDrive privato in condivisione con il Prof.Rebora. 
