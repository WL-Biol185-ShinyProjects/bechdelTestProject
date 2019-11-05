library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  
data.frame(
  
name = c("Range"),
  
    )

Value = as.character(c("Range",
                       ))


    
    # generate bins based on input$bins from ui.R
    movieData    <- moviescleanest
    range <- moviescleanest$budget(
      min(7000),
      max(425000000), 
    )
    

    # draw the histogram with the specified number of bins
    hist(movieData, breaks = range, col = 'darkgray', border = 'white')
    
  
  

  }
)
}
