library(shiny)

cars <- read.csv('auto-mpg.csv')

shinyServer(function(input,output)
{
  formulaText <- reactive({
    paste("horsepower ~ ",input$variable)
  })
  
  formulaTextPoint <- reactive({
    paste("horsepower ~", "as.integer(",input$variable,")")
  })
  
  
  output$cap <- renderText({
    formulaText()
  })
  
  output$carsBP <-renderPlot({
    plot(as.formula(formulaText()),data = cars, outline = input$outliers)
  })
  
  
})