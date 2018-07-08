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
  output$Document <- renderText(
    "Modulation is the process of strengthening the message signal with a carrier signal to 
    transmit the relevant message signal over long distances.Here in this shiny app, 
    Modulation with respect to Amplitude is performed.
    A message signal could be mathematically represented as a sine wave.
    A message signal or in technlogical terms referred also as Baseband Signal consists of the following components
    "
  )
  
  output$inp <- renderText(
    "Amplitude measured in Volts,
    Frequency measured in HZ,
    Time in seconds
    "
  )
  
  output$note <- renderText(
    "To run the app on this website, click on the plot tab,
    then Use the Sliders on the sidebar panel to desired values of time, amplitude and frequency.
    Observe the amplitude modulated wave based on the inputs selected or slided. 
    "
  )
  
  output$run_pkg <- renderText(
    "Due to space constraints, the application'sui.R and server.R scripts are stored on Github. The location is on code tab
    To Run the app locally on your system, Open Rstudio and install the following R packages for the app to run locally
    ggplot2 and shiny. 
    "
  )
  
  output$soutput <-
    renderText(
      "From the side bar panel use sliders to a desired time, amplitude and frequency values.
      Shiny Server would return Outputs that would be an Amplitude Modulated wave based on the inputs time -
      t, amplitude - a,frequency - f. This is the wave used for transmitting the message signal for longer distances.
      Message Signal is embedded within the Amplitude Modulated wave along with carrier signal
      "
    )
  
  
  # tab plot
  output$msg <- renderPlot({
    # generate wave based on inputs from ui.R
    
    
    omega <- 2 * 3.14 * (input$f)
    t <- seq(0, input$t, 1)
    msg <- (input$a * sin(omega * t))
    # carrier wave added
    car_f <- 1000000
    carrier <- (5 * sin(2 * 3.14 * 1000000 * t))
    am_wave <- ((1 + msg) * carrier)
    
    # amplitude modulated wave plot
    
    qplot(
      t,
      am_wave,
      geom = "line",
      xlab = "time in seconds",
      ylab = "Amplitude in volts",
      colour = I("blue")
    )
    
    
    
    
  })
  
  output$time <- renderText(input$t)
  output$Amplitude <- renderText(input$a)
  output$frequency <- renderText(input$f)
  
  # tab code
  output$Location <- renderText(
                               "Scripts ui.R and server.R code for the Amplitude Modulation app
                                is availble at https://github.com/RaviMohan19/MyAmpModApp"
                               )
  
})
