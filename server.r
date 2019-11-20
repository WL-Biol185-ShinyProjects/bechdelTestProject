library(shiny)
library(ggplot2)
library(dplyr)

  # Define server logic required to draw a histogram
  function(input, output) {
  
  output$lowBudgetPlot <- renderPlot({

 # Application title
    titlePanel("Bechdel Test Data")
    

    # draw the graphs
    initialFilter <- filter(moviescleanest, domgross >= input$domGross[1] &
                                            domgross <= input$domGross[2])
    finalFilter   <- if("All"   == input$dist) {
                       initialFilter
                       } else {
      filter(initialFilter, reason   == input$dist, decade   == input$dec)
    }
    finalFilter %>%
          ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    })

  output$highBudgetPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
   initialFilter <- filter(moviescleanest, domgross >= input$domGross[1] &
                                           domgross <= input$domGross[2])
   finalFilter   <- if("All"   == input$dist) {
                       initialFilter
                       } else {
                         filter(initialFilter, reason  == input$dist, decade == input$dec)
                      }
     finalFilter %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$domGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    initialFilter <- filter(moviescleanest, domgross >= input$domGross[1] &
                              domgross <= input$domGross[2])
    finalFilter   <- if("All"   == input$dist) {
      initialFilter
    } else {
      filter(initialFilter, reason  == input$dist, decade == input$dec)
    }
    finalFilter %>%
    ggplot(aes(year, domgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    initialFilter <- filter(moviescleanest, domgross >= input$domGross[1] &
                              domgross <= input$domGross[2])
    finalFilter   <- if("All"   == input$dist) {
      initialFilter
    } else {
      filter(initialFilter, reason  == input$dist, decade == input$dec)
    }
    finalFilter %>%
    ggplot(aes(year, intgross)) + geom_point() + xlim(1970, 2013)
    
  })
  } 

 
  