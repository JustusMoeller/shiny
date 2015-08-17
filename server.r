BMI <- function(height, weight) weight/(height/100*height/100)

shinyServer(
  function(input, output){
    output$height <- renderPrint({input$height})
    output$weight <- renderPrint({input$weight})
    output$BMI <- renderPrint({BMI(input$height,input$weight)})
  }
)