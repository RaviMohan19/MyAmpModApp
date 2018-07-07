#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)


# Define server logic required to draw an amplitude modulated wave
shinyServer(function(input, output) {
  
 # tab Documenation
 output$Document <- 
    
                               
  
  # tab plot
  output$msg <- renderPlot({
    
    # generate wave based on inputs from ui.R
    
    
    omega <- 2 * 3.14 * (input$f)
    t <- seq(0,input$t,1)
    msg <- (input$a * sin(omega * t))
    # carrier wave added
    car_f <- 1000000
    carrier <- (5 * sin(2 * 3.14 * 1000000 * t))
    am_wave <- (( 1 + msg)* carrier)
    
    # draw the histogram with the specified number of bins
    # hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
    qplot(t, am_wave, geom = "line", xlab = "time in seconds", ylab = "Amplitude",
          colour = I("blue"))
    
  })
  
  output$time <- renderText(input$t)
  output$Amplitude <- renderText(input$a)
  output$frequency <- renderText(input$f)
  
})
