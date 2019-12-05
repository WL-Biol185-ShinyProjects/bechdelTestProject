library(shiny)
library(shinydashboard)
library(tidyverse)
library(ggplot2)
library(htmltools)

# Pulling Up Data Frame

moviescleanest <- read.csv("moviescleanest.csv")

# Define UI for application that draws a histogram
shinyUI(fluidPage( 
  
# Application title
    ui <- dashboardPage(
      dashboardHeader(title = "Bechdel Test"),
      
# Making tabs on sidebar
      dashboardSidebar(
        sidebarMenu(
         menuItem("Home",    tabName = "homeTab"),
         menuItem("Data",    tabName = "dataTab"),
         menuItem("Sources", tabName = "sourcesTab")
         
                   )
      ),
  
    dashboardBody(
      tabItems(
        tabItem((       tabName = "homeTab"), 
                
                h3(strong("What is the Bechdel Test?")),
                
                br(),
                
                h4(p("The Bechdel Test was created in response to this cartoon by Alison Bechdel in 1985. This test is a measure of the representation of women in movies based on three facets.")),
                
                br(),
                
                h4(p(strong("The movie must contain:"))), 
                
                br(),
                
                h4(p("1) at least two women")),
                
                br(),
                
                h4(p("2) these two women must have a conversation with one another")),
                
                br(),
                
                h4(p("3) this conversation must be about something other than a man")), 
                
                br(),
                
                br(),
                
                img(src = "https://upload.wikimedia.org/wikipedia/en/b/bf/Dykes_to_Watch_Out_For_%28Bechdel_test_origin%29.jpg", height = 600, width = 1000, align = "center"),
                
                br(),
                
                br(),
                
                br(),
                
                h4(p("All of the Data Points:")),
                
                br(),
                
                br(),
                
                h4(strong(textOutput('hoverPointInfoAllPlot'))),
                
                plotOutput("allPlot", hover = hoverOpts(id = "allPlotHover")),
                
                br()
                
        ),
        
        tabItem(tabName = "sourcesTab", 
                
                h3(strong("Sources")),
                
                br(),
                br(),
                
                a(h4("About Bechdel Test and Original Comic Strip"), 
                  href  = "https://npr.org/templates/story/story.php?storyId=94202522"),
                
                br(),
                br(),
                
                a(h4("Article Where Data is From"), 
                  href  = "https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/"),
                
                br(),
                br(),
                
                a(h4("Github for Data"),
                  href  = "https://github.com/fivethirtyeight/data/tree/master/bechdel")
                
        ),
        
        tabItem(tabName = "dataTab",
             sidebarLayout(
               sidebarPanel(
                 radioButtons("dist", "Reason for Failure:", 
                              c("Passed Bechdel Test"       = "ok",
                                "No Named Women Characters" = "nowomen",
                                "No Women Talking"          = "notalk",
                                "Talk Only About Men"       = "men"
                                
                              )),
        
                 br(),
                             
                    radioButtons("dec", "Decade:", 
                                 c("2010's" = "2010s",
                                   "2000's" = "2000s",
                                   "1990's" = "1990s",
                                   "1980's" = "1980s",
                                   "1970's" = "1970s"
                                   
                                   ))
                  ),
               
            # Show a plot of the generated distribution
                  mainPanel(
                    tabsetPanel(type = "tabs", 
                                
                                tabPanel("Low Budget",
                                         plotOutput("lowBudgetPlot",
                                                    hover  = hoverOpts(id = "lowBudgetHover")),
                                         h4(strong(textOutput('hoverPointInfoLow'))),
                                         sliderInput("lowBudget",
                                                     "Low Budget:",
                                                     7000,
                                                     100000000,
                                                     value = c(11000000, 900000000),
                                                     step  = 2500)),
                                
                                tabPanel("High Budget",
                                         plotOutput("highBudgetPlot",
                                                     hover = hoverOpts(id = "highBudgetHover")),
                                         h4(strong(textOutput('hoverPointInfoHigh'))),
                                         sliderInput("highBudget",
                                                     "High Budget:",
                                                     100000001,
                                                     425000000,
                                                     value = c(115000000, 242000000),
                                                     step  = 2500)),
                                
                                tabPanel("Domestic Gross",
                                         plotOutput("domgrossPlot",
                                                     hover = hoverOpts(id = "domgrossHover")),
                                         h4(strong(textOutput('hoverPointInfoDomgross'))),
                                         sliderInput("domgross",
                                                     "Domestic Gross:",
                                                     800,
                                                     500000000,
                                                     value = c(100000000, 200000000),
                                                     step  = 2500)),
                                
                                tabPanel("International Gross", 
                                         plotOutput("intGrossPlot",
                                                     hover = hoverOpts(id = "intGrossHover")),
                                         h4(strong(textOutput('hoverPointInfoIntGross'))),
                                         sliderInput("intGross",
                                                     "International Gross:",
                                                     800,
                                                     500000000,
                                                     value = c(100000000, 200000000),
                                                     step  = 2500))

                  )
                 )
                )
               )
              )
             )
            )
           )
          )

           
        
        

       
  

