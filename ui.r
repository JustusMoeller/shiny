shinyUI(
  
  pageWithSidebar(
    
    #Application Title
    headerPanel("BMI Calculation"),
    
    sidebarPanel(
      numericInput('weight', 'Enter your weight in kilograms [kg]', 75, min = 1, max = 300, step = 0.1),
      numericInput('height', 'Enter your height in centimeters [cm]', 175, min = 60, max = 250, step = 1),
      submitButton('Calculate BMI')
    ),
    mainPanel(
      h3('Results of BMI'),
      h4('You Entered height:'),
      verbatimTextOutput("height"),
      h4('You Entered weight:'),
      verbatimTextOutput("weight"),
      h4('Which results in a BMI of '),
      verbatimTextOutput("BMI")
    )
  )
)