setwd("C:/Users/gimmi_000/Documents/info498f/a8_shinyapp")
library(shiny)
library(plotly)
library(dplyr)
source('build_map.R')

names <- colnames(iris)[]

shinyServer(function(input, output) {
  
  output$map <- renderPlotly({
    build_map(iris, input$adjust, input$adjust2)
  })
})