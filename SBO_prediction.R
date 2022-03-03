# Word Prediction with SBO (Stupid Back-off)

library(sbo)
library(tidytext)
library(dplyr)
library(readtext)
library(data.table)
library(tm)

# load datset 
head(sbo::twitter_train, 3) # comes with SBO

# File locations
twitter_location <- 'final/en_US/en_US.twitter.txt'
blog_location <- 'final/en_US/en_US.blogs.txt'
news_location <- 'final/en_US/en_US.news.txt'
badwords_location <-'full-list-of-bad-words_text-file_2021_01_18.txt'

# Loading the data
BadwordsList <- readLines(badwords_location)
twitter <- readLines(twitter_location)
news <- readLines(news_location)
blogs <- readLines(blog_location)

merge_read <- c(blogs, news, twitter)

#                removeWords(BadwordsList) %>%    

temp1 <- sbo::twitter_train
#temp2 <- load_news[[2]]
set.seed(12345)
#temp3a <- sample(merge_read, ceiling(.30*length(blogs))) %>%
#            iconv("latin1", "ASCII", sub="") %>%
#            removeNumbers() %>%
#            removePunctuation() %>%
#            removeWords(stopwords("english"))

#Loading Train and test datasets randomly choosen from blogs, news, twitter
t_train <- readtext(file='merged25.txt')
t_train <- t_train[[2]] 

t_test <- readLines('merged5_test.txt')

t_test <- sample(t_test, ceiling(.01*length(t_test)))




# Train predictor
p <- sbo_predictor(object = t_train, # load dataset
                   N = 3, # Train a 3-gram model
                   dict = target ~ 0.75, # cover 75% of training corpus
                   .preprocess = sbo::preprocess, # Preprocessing transformation 
                   EOS = ".?!:;", # End-Of-Sentence tokens
                   lambda = 0.4, # Back-off penalization in SBO algorithm
                   L = 3L, # Number of predictions for input
                   filtered = "<UNK>"  # Exclude the <UNK> token from predictions
)


predict(p, "i love")

#set.seed(420)
(evaluation <- eval_sbo_predictor(p, test = t_test))

evaluation %>% # Accuracy for in-sentence predictions
    filter(true != "<EOS>") %>%
    summarise(accuracy = sum(correct) / n(),
              uncertainty = sqrt(accuracy * (1 - accuracy) / n()))