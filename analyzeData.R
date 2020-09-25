#Sentiment Analysis - Getting emotions.
mysentiment_covid = get_nrc_sentiment((covid_text))

#calculationg total score for each sentiment.
Sentimentscores_covid = data.frame(colSums(mysentiment_covid[,]))

names(Sentimentscores_covid) = "Score"
Sentimentscores_covid  = cbind("sentiment" = rownames(Sentimentscores_covid), Sentimentscores_covid)
rownames(Sentimentscores_covid) = NULL

#Plotting the sentiments with scores.
ggplot(data = Sentimentscores_covid, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position="none") +
  xlab("Sentiments") +
  ylab("scores") + 
  ggtitle("Sentiments of people behind the tweets on COVID-19")