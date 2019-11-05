library(shiny)
library(ggplot2)

  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  

    # draw the histogram   
   
<<<<<<< HEAD
    moviescleanest %>%
      ggplot(aes(budget)) + geom_histogram()
  
=======
  moviescleanest %>%
    ggplot(aes(year, budget)) + geom_point()
>>>>>>> 69e40a73e345c08c1198b11b1fd183f0edc2b02e
  
  hover <- input$"moviescleanest$title"

  }
)
}
