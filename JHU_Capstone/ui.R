#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel(
        h1("Next word prediction app", align = "left")
        
        ),

        # Main Panel layout, no SidePanel for this app.
        mainPanel( 
            textInput("text", label = h5("Enter some text in the field below"), value = "hello world", width = '100%'),
            
            h5("Based on this I think the next word should be:"),
            verbatimTextOutput("result_output"),
            
            
            
            h6("This app was created as a part of the Coursera's Data Sceince
            Specialization. The app predicts the next word based on the text you entered in the input field. 
            The app uses 3-gram Stupid BackOff (SBO) model that was previously
            pretrained on the English twitter, blogs, and news corpora available at:"),
            h6(a("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip")),
            
            
            h6("1. The app loads pre-trained predictor (sbo_predtable object), which greatly
               improves the performance of the app.") ,
            h6("2. The accuracy of the predictor can be evaluated using 
               'eval_sbo_predictor' functions and it turns to be rather low, around 12-15% ") ,
            
            h6("The source code is available at:") ,
            h6(a("https://github.com/sgorgutsa/Coursera_DataScience_Capstone"))
            
        )
    )
)
