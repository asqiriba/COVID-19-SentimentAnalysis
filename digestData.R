#Extracting tweets using a particular Hashtag.
tweets_covid = searchTwitter("#COVID19", n = 1000,lang = "en")

#Convert this extracted data to a dataframe which makes it more readable and easier to work with.
covid_tweets = twListToDF(tweets_covid)

#List Visualization.
View(covid_tweets)

#Data Cleanup.
covid_text = covid_tweets$text

#convert all text to lower case.
covid_text = tolower(covid_text)

# Replace blank space ("rt").
covid_text <- gsub("rt", "", covid_text)

# Replace @UserName.
covid_text = gsub("@\\w+", "", covid_text)

# Remove punctuation.
covid_text = gsub("[[:punct:]]", "", covid_text)

# Remove links.
covid_text = gsub("http\\w+", "", covid_text)

# Remove tabs.
covid_text = gsub("[ |\t]{2,}", "", covid_text)

# Remove blank spaces at the beginning.
covid_text = gsub("^ ", "", covid_text)

# Remove blank spaces at the end.
covid_text <- gsub(" $", "", covid_text)