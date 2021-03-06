


#Save predictor to use with Shiny app later
shiny_train <- sbo_predtable(object = t_train, # load dataset
                   N = 3, # Train a 3-gram model
                   dict = target ~ 0.75, # cover 75% of training corpus
                   .preprocess = sbo::preprocess, # Preprocessing transformation 
                   EOS = ".?!:;", # End-Of-Sentence tokens
                   lambda = 0.4, # Back-off penalization in SBO algorithm
                   L = 1L, # Number of predictions for input
                   filtered = "<UNK>"  # Exclude the <UNK> token from predictions
)
save(shiny_train, file = "shiny_train_save_1L.rda")
