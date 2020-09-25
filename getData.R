#My API: https://developer.twitter.com/en/apps/8253574
#install.packages('missingLib', dependencies = T)
#setwd("C:/Users/Feder/Desktop/COMP-578 Sentiment Analysis")

#Library Declaration.
library("NLP")
library("twitteR")
library("syuzhet")
library("tm")
library("SnowballC")
library("stringi")
library("topicmodels")
library("ROAuth")
library('ggplot2')

#Connect Twitter with R.
consumer_key = ''
consumer_secret = ''
access_token = ''
access_secret = ''

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
