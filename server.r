library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  

  output$distPlot <- renderPlot({

  # Application title
  titlePanel("Bechdel Test Data")
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("range",
                  "Range:",
                  min   = 1, 
                  max   = 1000,
                  value = c(200,500)),
    ),

    
    # generate bins based on input$bins from ui.R
    movieData    <- moviescleanest,
    range <- moviescleanest$budget(
      min(7000),
      max(425000000), 
    ),
    
    sliderInput("range",
                "Range:",
                min   = 1000, 
                max   = 10000000,
                value = c(1500,100000)),
     
    # draw the histogram with the specified number of bins
    hist(movieData, breaks = range, col = 'darkgray', border = 'white')
    
  
  
)
  }
)
}
