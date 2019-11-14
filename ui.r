library(shiny)
library(shinydashboard)
library(tidyverse)
library(ggplot2)

# Define UI for application that draws a histogram
    shinyUI(fluidPage( 
  
 # Application title
    titlePanel("Bechdel Test Data"),
    
    ui <- dashboardPage(
      dashboardHeader(title = "Bechdel Test"),
      
      dashboardSidebar(
        sidebarMenu(
         menuItem("Home", tabName = "homeTab"),
         menuItem("Data", tabName = "dataTab")
        )
      ),
      dashboardBody(
        tabItems(
        tabItem(tabName = "homeTab", 
                "This is the home page", 
        img(src = "https://upload.wikimedia.org/wikipedia/en/b/bf/Dykes_to_Watch_Out_For_%28Bechdel_test_origin%29.jpg", height = 300, width = 500, align = "center")
        ),
     tabItem(tabName = "dataTab",
             sidebarLayout(
               sidebarPanel(
                 radioButtons("dist", "Reason for Failure:", 
                              c("No Women Characters" = "reason$no women",
                                "No Women Talking" = "reason$notalk",
                                "Talk Only About Men" = "reason$men",
                                "Passed Bechdel Test" = "reason$ok")),
                 br()
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 
                 tabsetPanel(type = "tabs", 
                             
                             tabPanel("Low Budget", plotOutput("lowBudgetPlot"),
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