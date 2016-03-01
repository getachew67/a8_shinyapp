library(plotly)
library(dplyr)


build_map <- function(data, column, column2) {
  plot_ly(data, 
    type = "scatter", 
    x = eval(parse(text = column)),
    y = eval(parse(text = column2)),
    mode = "markers",
    color = Species) %>% 
    layout(title = "Iris Data", 
           xaxis = list(title = column), 
           yaxis = list(title = column2)) %>% 
    return()
}