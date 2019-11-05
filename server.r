library(shiny)
library(ggplot2)

  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  
<<<<<<< HEAD
    
    # generate bins based on input$bins from ui.R
    movieData    <- moviescleanest
    range <- moviescleanest$budget(
      min(7000),
      max(425000000), 
    )
=======
>>>>>>> 0defce256a5c8b2be3f7afa0aaee29d7ca77ff07
    

    # draw the histogram   
   
  moviescleanest %>%
    ggplot(aes(budget)) + geom_histogram()
  
  

  }
)
}
