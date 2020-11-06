library(shiny)

shinyUI(
  navbarPage("Analysis of technical specifications",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("factors and acceleration relationship"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("MPG" = "mpg",
                                          "Number of cylinders" = "cylinders",
                                          "Displacement (cu.in.)" = "displacement",
                                          "Weight (lb/1000)" = "weight",
                                          "acceleration (sec)" = "acceleration"
                                        ))
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("Plot", plotOutput("carsBP"))
                            )
                          )
                        )
                      )
             ),
             tabPanel("About the Data Set",
                      
                      h3("Kaggle autompg-data"),
                      helpText("'Auto-MPG' is used datasetto understand how wt, hpand no. of cylaffects the acc of a car.",
                               "dataset contains the specifications vehicles. The dataset is downloaded from the UCI Machine Learning Repository."),
                      
                      h3("Important"),
                      p("A data frame with 398 observations on 6 variables."),
                      
                      a(" https://archive.ics.uci.edu/ml/datasets/auto+mpg")
             ),
             tabPanel("More Data Detail",
                      h2("Auto-mpg dataset"),
                      hr(),
                      h3("Description"),
                      helpText("The data is technical spec of cars.",
                               "The dataset is downloaded from UCI Machine Learning Repository"),
                      
                      h3("Format"),
                      p("A data frame with 398 observations on 6 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cylinder	 Number of cylinders"),
                      p("  [, 3]	 displacement	 Displacement (cu.in.)"),
                      p("  [, 4]	 horsepower	 Gross horsepower"),
                      p("  [, 5]	 weight	 Weight(lbs)"),
                      p("  [, 6]   acceleration acceleration(sec)"),
                      h3("Source"),
                      
                      p("This dataset was taken from the StatLib library which is",
                        
                        "used in the 1983 American Statistical Association Exposition.")
             ),
             tabPanel("Go back to my Github repository",
                      a("https://github.com/Grissel-99/developing_data/tree/main"),
                      hr(),
                    
                      h4("The name of the repository is Developing Data")
             )
  )
)