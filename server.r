library(shiny)
library(ggplot2)



  # Define server logic required to draw a histogram


   function(input, output) {
     
    output$distPlot <- renderPlot({
    

 # Application title
    titlePanel("Bechdel Test Data")
    
 # draw the histogram  
   ggplot(moviescleaneast, aes(year, budget)) + geom_point()
    

      
      
 # Reason for failure check boxes
    output$value <- renderPrint({ input$budget }) + geom_point()



  

  })

  
  }

  
  
  
  
  
