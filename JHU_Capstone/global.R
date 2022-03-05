library(sbo)
library(shiny)
load("shiny_train_save_1L.rda")
shiny_train <- sbo_predictor(shiny_train)