library(shiny)
library(ggplot2)
library(dplyr)
library(leaflet)
library(mapdata)
library(maps)

  # Add Data Table
    moviescleanest <- read.csv("moviescleanest.csv")

  # Define Server Logic Required to Draw a Histogram
    function(input, output) {
  
    output$lowBudgetPlot <- renderPlot({

  # Application title
    titlePanel("Bechdel Test Data")
    
  # Low Budget Graphs
    moviescleanest %>%
      filter(
        budget   >= input$lowBudget[1] &
          budget <= input$lowBudget[2] &
          reason == input$dist &
          decade == input$dec
            )  %>%
    ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
             })

    output$hoverPointInfoLow <- renderText({
    
    lowBudgetHover <- nearPoints(moviescleanest, input$lowBudgetHover)
    as.character (paste(lowBudgetHover$title, collapse = ", "))
    
            })
  
  output$highBudgetPlot <- renderPlot({
    

    
    # High Budget Graphs
    moviescleanest %>%
    filter(
      budget   >= input$highBudget[1] &
        budget <= input$highBudget[2] &
        reason == input$dist &
        decade == input$dec
           ) %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
           })
  
  output$hoverPointInfoHigh <- renderText({
    
    highBudgetHover <- nearPoints(moviescleanest, input$highBudgetHover)
    as.character (paste(highBudgetHover$title, collapse = ", "))
    
          })
  
  output$domgrossPlot <- renderPlot({
    
    # Domestic Gross Graphs
    moviescleanest %>%
      filter(
        budget   >= input$domgross[1] &
          budget <= input$domgross[2] &
          reason == input$dist &
          decade == input$dec
             ) %>%
    ggplot(aes(year, domgross)) + geom_point() + xlim(1970, 2013)
    
          })
  
  output$hoverPointInfoDomgross <- renderText({

    domgrossHover <- nearPoints(moviescleanest, input$domgrossHover)

    as.character (paste(domgrossHover$title, collapse = ", "))
    
          })
  
  output$intGrossPlot <- renderPlot({
    
  
    
    # International Gross Graphs
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
    
    as.character (paste(intGrossHover$title, collapse = ", "))
    
        })
  
  output$allPlot <- renderPlot({
  
    moviescleanest %>%
      ggplot(aes(year, budget, color = reason)) + geom_point() + xlim(1970, 2013)
    
        })
    
  output$hoverPointInfoAllPlot <- renderText({
    
    allPlotHover <- nearPoints(moviescleanest, input$allPlotHover)
    
    as.character (paste(allPlotHover$title, collapse = ", "))
    
    
        })
  
  # Download Button
  output$dataTable <- downloadHandler(
    filename = function() {
      "moviescleanest.csv"
        },
    content = function(file) {
      write.csv(moviescleanest, file)
        }
        )
  
  

        }
                                             


 
  