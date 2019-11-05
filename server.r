library(shiny)
library(ggplot2)

  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  

    # draw the histogram   
   
  moviescleanest %>%
    ggplot(aes(year, budget)) + geom_point()

  hover <- input$"moviescleanest$title"

  }
)
}
