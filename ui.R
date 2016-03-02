library(shiny)
library(plotly)

# Creates a UI that changes with the size of the window
shinyUI(fluidPage(
  
    # Creates the title of the app
    titlePanel("Let's Compare Petals and Sepals!!!"),

    sidebarLayout(
      
      # Puts two radio button widgets in the sidebar
      # Choices consist of each column in the 'df' dataset
      # The first widget puts a column of data into x-axis,
      # the second into the y-axis.  A scatter plot of their 
      # relationship is created.  
      sidebarPanel(
        
        # Selects the column of data to be put into the x-axis
        # of the scatter plot
        radioButtons("adjust", 
                     label = "X Axis",
                     choices = list("Sepal Length" = "Sepal.Length",
                                    "Sepal Width" = "Sepal.Width",
                                    "Species" = "Species"), 
                     selected = "Sepal.Width"),
        
        radioButtons("adjust2", 
                     label = "Y Axis",
                     choices = list("Petal Length" = "Petal.Length",
                                    "Petal Width" = "Petal.Width",
                                    "Species" = "Species"),
                     selected = "Petal.Length"),
        
        # This slider widget allows the user to change the
        # size of the markers on the scatter plot.  Increments
        # the sizes by 0.5 each time
        sliderInput("adjust3",
                    "Size of Markers",
                    min = 1,
                    max = 15,
                    value = 6,
                    step = 0.5)
        ),
        
        # Creates the plotly scatter plot in the main panel
        mainPanel(
          plotlyOutput('scatter')
        )
    )
  )
)
