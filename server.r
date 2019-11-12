library(shiny)
library(ggplot2)



  # Define server logic required to draw a histogram


   function(input, output) {
     
    output$distPlot <- renderPlot({
    

 # Application title
    titlePanel("Bechdel Test Data")
    
 # draw the histogram  
   ggplot(moviescleanest, aes(year, budget)) + geom_point()
    

<<<<<<< HEAD
      
      
 # Reason for failure check boxes
    output$value <- renderPrint({ input$budget }) + geom_point()
=======
    # draw the graph   
     ggplot(moviescleanest, aes(year, input$budget)) + geom_point()
      
      
    
  
    })
>>>>>>> fc7b41be8d9d2a8de572e50c42f7f1744e181dd8


  

  })


 
  }
  
  

  
  
  
  
  
