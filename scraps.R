plotOutput("distPlot", hover = hoverOpts(id = "hovertitle")) , 
textOutput("hoveredMovieInfo"),


# Reactive expresion for failures  
d <- reactive({
  dist <- switch(input$dist,
                 'no women' = rnoWomen,
                 notalk = rnoTalk,
                 men = rmen,
                 rnoWomen)
  
  dist(input$n)
  
  # Plot Low Budget
  output$lBudget <- renderPlot({
    dist         <- input$dist
    n            <- input$n
    
    hist(d(),
         main = paste("r", dist, "(", n,")", sep = "")
    )
    
  })
  
  # Plot High Budget
  output$hBudget <- renderPlot({
    dist         <- input$dist
    n            <- input$n
    
    hist(d(),
         main = paste("r", dist, "(", n,")", sep = "")
    )        
  })
  
  # Plot Domestic Gross
  output$demgross <- renderPlot({
    dist         <- input$dist
    n            <- input$n
    
    hist(d(),
         main = paste("r", dist, "(", n,")", sep = "")
    )        
  })
  
  # Plot international Gross
  output$intgross <- renderPlot({
    dist         <- input$dist
    n            <- input$n
    
    hist(d(),
         main = paste("r", dist, "(", n,")", sep = "")
    )        
  })
  
<<<<<<< HEAD
  moviescleanest %>%
    filter(
      budget >= input$lowBudget[1] &
        budget <= input$lowBudget[2] &
        reason == input$dist &
        decade == input$dec
    ) 
=======
  
  filter(
    budget >= input$highBudget[1] &
      budget <= input$highBudget[2] &
      reason == input$dist &
      decade == input$dec
  ) %>%
>>>>>>> f345be431ede76a8e47eaf89c85b539372ba8536
  
  
  
  
#server map stuff
  output$worldMap <- renderLeaflet ({
    leaflet(data = moviescleanest) %>% 
      addTiles("OpenStreetMap.Mapnik") %>%
      addCircles(label = paste("Movie=", moviescleanest$Title)
      )
    # Add Map
    output$movieMap <- renderLeaflet ({
      leaflet(data = moviescleanest) %>% 
        addTiles("OpenStreetMap.Mapnik") %>%
        addCircles(label = paste("Movie=", moviescleanest$Title)
        )})
    output$hoverPointInfoMap <- renderText({
      mapHover <- nearPoints(moviescleanest, input$mapHover)
      as.character (mapHover$title
      )
    })
  #ui map stuff
    tabPanel("Map",
             leafletOutput("movieMap", hover = hoverOpts(id = "mapHover")), 
             textOutput("hoverPointInfoMap")
             tabPanel("Map",
                      leafletOutput("movieMap", hover = hoverOpts(id = "mapHover")), 
                      textOutput("hoverPointInfoMap"))
            
             
              # download button
             output$dataTable <- downloadHandler(
               filename = function() {
                 "moviescleanest.csv"
               },
               content = function(file) {
                 write.csv(moviescleanest, file)
               }
             )
