# Assignemnt report on Task 0-3

## Task 0

  1. Obtaining the data - Can you download the data and load/manipulate it in R?  
  2. Familiarizing yourself with NLP and text mining - Learn about the basics of natural language processing and how it relates to the data science process you have learned in the Data Science Specialization.

*Questions to consider*

  What do the data look like?
  Where do the data come from?
  Can you think of any other data sources that might help you in this project?
  What are the common steps in natural language processing?
  What are some common issues in the analysis of text data?
  What is the relationship between NLP and the concepts you have learned in the Specialization?
  
## Task 1
  1. Tokenization - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.
  2. Profanity filtering - removing profanity and other words you do not want to predict.

## Task 2
  1. Exploratory analysis - perform a thorough exploratory analysis of the data, understanding the distribution of words and relationship between the words in the corpora. 
  2. Understand frequencies of words and word pairs - build figures and tables to understand variation in the frequencies of words and word pairs in the data.

*Questions to consider*

  Some words are more frequent than others - what are the distributions of word frequencies? 
  What are the frequencies of 2-grams and 3-grams in the dataset? 
  How many unique words do you need in a frequency sorted dictionary to cover 50% of all word instances in the language? 90%? 
  How do you evaluate how many of the words come from foreign languages? 
  Can you think of a way to increase the coverage -- identifying words that may not be in the corpora or using a smaller number of words in the dictionary to cover the same number of phrases?
  
## Task 3
  1. Build basic n-gram model - using the exploratory analysis you performed, build a basic n-gram model for predicting the next word based on the previous 1, 2, or 3 words.
  2. Build a model to handle unseen n-grams - in some cases people will want to type a combination of words that does not appear in the corpora. Build a model to handle cases where a particular n-gram isn't observed.

*Questions to consider*

How can you efficiently store an n-gram model (think Markov Chains)?
How can you use the knowledge about word frequencies to make your model smaller and more efficient?
How many parameters do you need (i.e. how big is n in your n-gram model)?
Can you think of simple ways to "smooth" the probabilities (think about giving all n-grams a non-zero probability even if they aren't observed in the data) ?
How do you evaluate whether your model is any good?
How can you use backoff models to estimate the probability of unobserved n-grams?

## Note: Milestone report review criteria
  1. Does the link lead to an HTML page describing the exploratory analysis of the training data set?
  2. Has the data scientist done basic summaries of the three files? Word counts, line counts and basic data tables?
  3. Has the data scientist made basic plots, such as histograms to illustrate features of the data?
  4. Was the report written in a brief, concise style, in a way that a non-data scientist manager could appreciate?

