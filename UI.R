##This is a code for the ui.R program for the week 4 coursera assignment. It is included under developing data products in coursera data science.
## this project is done as the part of last course for data sciece coursework
library(shiny)

shinyUI(
  navbarPage("Analysis of technical specifications",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("factors and acc relation"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Var:",
                                        c("MPG" = "mpg",
                                          "Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Weight (lb/1000)" = "w",
                                          "acceleration (sec)" = "acc"
                                        ))
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("Plot", plotOutput("cBP"))
                            )
                          )
                        )
                      )
             ),
             tabPanel("About the Data Set",
                      
                      h3("Kaggle autompg-data"),
                      helpText("'Auto-MPG' is used datasetto understand how wt, hpand no. of cyl affects the acc of car.",
                               "dataset contains the specifications vehicles. UCI Machine Learning Repository is where the",
                               "dataset related to the car specification is downloaded."),
                      
                      h3("Important"),
                      p("this dataframe contains 398 observations. these onservations are on 6 vars."),
                      
                      a(" https://archive.ics.uci.edu/ml/datasets/auto+mpg")
             ),
             tabPanel("More detail on the data",
                      h2("Auto-mpg dataset"),
                      hr(),
                      h3("Description"),
                      helpText("The data is technical spec of cars.",
                               "UCI Machine Learning Repository is where this dataset is downloaded from"),
                      
                      h3("Format"),
                      p("this dataframe contains 398 observations. these onservations are on 6 vars."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cylinder	 Number of cylinders"),
                      p("  [, 3]	 displacement	 Displacement (cu.in.)"),
                      p("  [, 4]	 horsepower	 Gross horsepower"),
                      p("  [, 5]	 weight	 Weight(lbs)"),
                      p("  [, 6]   acceleration acceleration(sec)"),
                      h3("Source"),
                      
                      p("This dataset was taken from the StatLib library.",
                        
                        "this library is used in 1983.",
                        "The purpose was to use it in American Statistical Association Exposition.")
             ),
             tabPanel("my github reposiory:",
                      a("https://github.com/Grissel-99/developing_data/tree/main"),
                      hr(),
                    
                      h4("Developing Data is the name of the repo")
             )
  )
)