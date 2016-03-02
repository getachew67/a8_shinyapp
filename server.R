library(shiny)
library(plotly)

data("iris")

# Allows for the usage of the function in this 'Server' file  
source('build_plot.R')

# Takes input from the Ui, and outputs a respective map.  Uses the `build_map` function
# from the build_map.R file. 
shinyServer(function(input, output) {
  output$scatter <- renderPlotly({
    build_plot(iris, input$adjust, input$adjust2, input$adjust3)
  })
}) 
