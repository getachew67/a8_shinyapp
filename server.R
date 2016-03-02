setwd("C:/Users/gimmi_000/Documents/info498f/a8_shinyapp")

library(shiny)
library(plotly)
library(dplyr)

# Allows for the usage of the function in this 'Server' file 
source('build_plot.R')

data("iris")
#df <- iris
#names(df) <- gsub("l.", "l ", names(df))

# Takes input from the Ui, and outputs a respective map.  Uses the `build_map` function
# from the build_map.R file. 
shinyServer(function(input, output) {
  output$map <- renderPlotly({
    build_plot(iris, input$adjust, input$adjust2, input$adjust3)
  })
}) 
