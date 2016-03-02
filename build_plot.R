build_plot <- function(data, xaxis, yaxis, dot_size) {
  
  plot_ly(data, 
    type = "scatter", 
    x = eval(parse(text = xaxis)),
    y = eval(parse(text = yaxis)),
    mode = "markers",
    marker = list(size = dot_size, color = toRGB("hotpink3"))) %>% 
    
    layout(title = "Iris Data", 
           xaxis = list(title = xaxis), 
           yaxis = list(title = yaxis)) %>% 
    
    return()
}