#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#    

library(shiny)
library(ggplot2)


# Define UI for application that draws a AMplitude Modulation Curve
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Amplitude Modulation"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("t",
                  "Select Time period for the message:",
                  min = 0,
                  max = 60,
                  value = 1),
      
      sliderInput("a",
                  "Select the Amplitude:",
                  min = 0,
                  max = 5,
                  value = 1),
      
      sliderInput("f",
                  "Select the Frequency:",
                  min = 10,
                  max = 1000,
                  value = 100)
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        type = "tabs",
        tabPanel("Documentation", h2("Introduction:"),
                 textOutput("Document"),
                 h2("Inputs Used:"),
                 textOutput("inp"),
                 h2("WebApp running:"),
                 textOutput("note"),
                 h2("Required packages:"),
                 textOutput("run_pkg"),
                 h2("Server Output:"),
                 textOutput("soutput")),
                 
        
        tabPanel(
          "Plot",
          h4(
            "Amplitude modulated wave desired inputs slide time, amplitude and frequency"
          ),
          plotOutput("msg"),
          h5("Selected Time in seconds:"),
          textOutput("time"),
          h5("Selected Amplitude in Volts:"),
          textOutput("Amplitude"),
          h5("Selected Frequency in Hz:"),
          textOutput("frequency")
        ),
        tabPanel("Code", h3("GitHub"),
                 textOutput("Location")
        )
                  
                  
      )
      
    )
  )
))
