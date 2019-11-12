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