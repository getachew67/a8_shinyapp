library(shiny)
library(plotly)

shinyUI(fluidPage(
    titlePanel("Flowers"),
    
    sidebarLayout(
      
      sidebarPanel(
        radioButtons("adjust", label = "X Axis",
                     choices = names,
                     selected = "Sepal.Length"),
        
        radioButtons("adjust2", label = "Y Axis",
                     choices = names,
                     selected = "Petal.Length")
        ),
  
        mainPanel(
          plotlyOutput('map')
          
  )
)
)
)
