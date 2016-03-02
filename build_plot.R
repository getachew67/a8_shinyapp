# Creates a plotly scatter plot with the data given from the widgets
# X-axis and y-axis are made from taking strings as variables from the
# columns of data that are chosen by the user with the widgets
# `marker_size` is the integer that will be used to change the size of the
# marker/plot in the scatter plot graph.
build_plot <- function(data, xaxis, yaxis, marker_size) {
  
  # Creates a scatter graph with custom x/y-axis, custom size of markers,
  # and plots data points in pink. 
  plot_ly(data, 
    type = "scatter", 
    x = eval(parse(text = xaxis)),
    y = eval(parse(text = yaxis)),
    mode = "markers",
    marker = list(size = marker_size, color = toRGB("hotpink3"))) %>% 
    
    # plot_ly function piped into layout function to add titles and labels
    layout(title = "Iris Data", 
           xaxis = list(title = xaxis), 
           yaxis = list(title = yaxis)) %>% 
    
    # plot_ly and layout function piped into return so that the scatter plot
    # appears in the main panel
    return()
}