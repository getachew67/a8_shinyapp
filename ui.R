library(shiny)
library(plotly)

shinyUI(fluidPage(
    titlePanel("Let's Compare Petals and Sepals!!!"),
    
    sidebarLayout(
      
      sidebarPanel(
        radioButtons("adjust", 
                     label = "X Axis",
                     choices = colnames(iris),
                     selected = colnames(iris)[1]),
        
        radioButtons("adjust2", 
                     label = "Y Axis",
                     choices = colnames(iris),
                     selected = colnames(iris)[2]),
        
        sliderInput("adjust3",
                    "Size of Markers",
                    min = 1,
                    max = 15,
                    value = 6,
                    step = 0.5)
        ),
  
        mainPanel(
          plotlyOutput('map')
        )
    )
  )
)
