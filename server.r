library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- moviescleanest
    range <- moviescleanest$budget(
      min(x),
      max(x), 
    )
    
    sliderInput("range",
                "Range:",
                min   = 1000, 
                max   = 10000000,
                value = c(1500,100000))
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = range, col = 'darkgray', border = 'white')
    
  })
  
}