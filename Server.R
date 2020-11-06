##This is a code for the server.R program for the week 4 coursera assignment. It is included under developing data products in coursera data science.
## this project is done as the part of last course for data sciece coursework
library(shiny)

c <- read.csv('auto-mpg.csv')

shinyServer(function(input,output)
{
  formulaText <- reactive({
    paste("horsepower ~ ",input$variable)
  })
  
  formulaTextPoint <- reactive({
    paste("horsepower ~", "as.integer(",input$variable,")")
  })
  
  
  output$ca <- renderText({
    formulaText()
  })
  
  output$cBP <-renderPlot({
    plot(as.formula(formulaText()),data = c, outline = input$outliers)
  })
  
  
})