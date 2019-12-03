library(shiny)
library(ggplot2)
library(dplyr)

moviescleanest <- read.csv("moviescleanest.csv")

  # Define server logic required to draw a histogram
  function(input, output) {
  
  output$lowBudgetPlot <- renderPlot({

 # Application title
    titlePanel("Bechdel Test Data")
    

    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$lowBudget[1] &
          budget <= input$lowBudget[2] &
          reason == input$dist &
          decade == input$dec
      )  %>%
       ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    })

  output$hoverPointInfoLow <- renderText({
    
    lowBudgetHover <- nearPoints(moviescleanest, input$lowBudgetHover)
    as.character (lowBudgetHover$title)
    
  })
  
  output$highBudgetPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
    filter(
      budget >= input$highBudget[1] &
        budget <= input$highBudget[2] &
        reason == input$dist &
        decade == input$dec
    ) %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$hoverPointInfoHigh <- renderText({
    
    highBudgetHover <- nearPoints(moviescleanest, input$highBudgetHover)
    as.character (highBudgetHover$title)
    
  })
  
  output$domgrossPlot <- renderPlot({
    

    
    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$domgross[1] &
          budget <= input$domgross[2] &
          reason == input$dist &
          decade == input$dec
      ) %>%
    ggplot(aes(year, domgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$hoverPointInfoDomgross <- renderText({

    
    domgrossHover <- nearPoints(moviescleanest, input$domgrossHover)

    as.character (domgrossHover$title)
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$intGross[1] &
          budget <= input$intGross[2] &
          reason == input$dist &
          decade == input$dec
      ) %>%
    ggplot(aes(year, intgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$hoverPointInfoIntGross <- renderText({
    
    
    intGrossHover <- nearPoints(moviescleanest, input$intGrossHover)
    
    as.character (intGrossHover$title)
    
  })
  
  output$allPlot <- renderPlot({
  
    moviescleanest %>%
      ggplot(aes(year, budget, color = reason)) + geom_point() + xlim(1970, 2013)
    
  })
    
  output$hoverPointInfoAllPlot <- renderText({
    
    
    allPlotHover <- nearPoints(moviescleanest, input$allPlotHover)
    
    as.character (allPlotHover$title)
    
  })
  
# Add Map
  
      
     } 

 
  