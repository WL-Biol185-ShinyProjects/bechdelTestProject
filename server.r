library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  
<<<<<<< HEAD
=======
data.frame(
  
name = c("Range"),
  
    )

Value = as.character(c(paste(input$Range,collapse = ""
                       )))

>>>>>>> f6cd17b68963ec329199e3d69d7d75d77d77a77b

    
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
