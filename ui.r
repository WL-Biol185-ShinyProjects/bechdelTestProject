library(shiny)
library(shinydashboard)
library(tidyverse)
library(ggplot2)
library(htmltools)

# Define UI for application that draws a histogram
    shinyUI(fluidPage( 
  
 # Application title
    
    ui <- dashboardPage(
      dashboardHeader(title = "Bechdel Test"),
      
      dashboardSidebar(
        sidebarMenu(
         menuItem("Home", tabName = "homeTab"),
         menuItem("Data", tabName = "dataTab"),
         menuItem("Sources", tabName = "sourcesTab")
        )
      ),
      dashboardBody(
        tabItems(
        tabItem(tabName = "homeTab", 
       
              strong("What is the Bechdel Test?"),
       
         br(),
         br(),
                p("The Bechdel Test was created in response to this cartoon by Alison Bechdel in 1985. This test is a measure of the representation of women in movies based on three facets. The movie must contain at least two women, these two women must have a conversation with one another, and this conversation must be about something other than a man."), 
        img(src = "https://upload.wikimedia.org/wikipedia/en/b/bf/Dykes_to_Watch_Out_For_%28Bechdel_test_origin%29.jpg", height = 600, width = 1000, align = "center"),
        
        br(),
        br(),
        br(),
        
        plotOutput("allPlot")
        
        ),
        
        tabItem(tabName = "sourcesTab", 
                strong("Sources"),
                
                br(),
                br(),
                
                urlEncodePath(wwww.npr.org/templates/story/story.php?storyId=94202522),
                
                br(),
                
                urlEncodePath(https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/),
                
                br(),
                
                urlEncodePath(https://github.com/fivethirtyeight/data/tree/master/bechdel)
                
                ),
                
        tabItem(tabName = "dataTab",
                
                
                
             sidebarLayout(
               sidebarPanel(
                 radioButtons("dist", "Reason for Failure:", 
                              c("No Named Women Characters" = "nowomen",
                                "No Women Talking"          = "notalk",
                                "Talk Only About Men"       = "men",
                                "Passed Bechdel Test"       = "ok"
                                 )),
                 br(),
                 
                 radioButtons("dec", "Decade:", 
                              c("1970's" = "1970s",
                                "1980's" = "1980s",
                                "1990's" = "1990s",
                                "2000's" = "2000s",
                                "2010's" = "2010s"))
               ),
              
               
               # Show a plot of the generated distribution
               mainPanel(
                 
                 tabsetPanel(type = "tabs", 
                             
                             tabPanel("Low Budget",
                                      plotOutput("lowBudgetPlot", hover = hoverOpts(id = "lowBudgetHover")),
                                      textOutput('hoverPointInfo'),
                                      sliderInput("lowBudget",
                                                  "Low Budget:",
                                                  7000,
                                                  100000000,
                                                  value = c(11000000, 900000000),
                                                  step = 2500)),
                             tabPanel("High Budget", plotOutput("highBudgetPlot"),
                                      sliderInput("highBudget",
                                                  "High Budget:",
                                                  100000001,
                                                  425000000,
                                                  value = c(115000000, 242000000),
                                                  step = 2500)),
                             tabPanel("Domestic Gross", plotOutput("domGrossPlot"),
                                      sliderInput("domGross",
                                                  "Domestic Gross:",
                                                  800,
                                                  500000000,
                                                  value = c(100000000, 200000000),
                                                  step = 2500)),
                             tabPanel("International Gross", plotOutput("intGrossPlot"),
                                      sliderInput("intGross",
                                                  "International Gross:",
                                                  800,
                                                  500000000,
                                                  value = c(100000000, 200000000),
                                                  step = 2500))
                             
                             
                )
               )
              )
             )
            )
           )
          )
         )
        )
