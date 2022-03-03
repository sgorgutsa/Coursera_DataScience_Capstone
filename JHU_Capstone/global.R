library(sbo)
library(shiny)
load("shiny_train_save.rda")
shiny_train <- sbo_predictor(shiny_train)