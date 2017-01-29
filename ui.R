library(shiny)

shinyUI(fluidPage(
  titlePanel("Mortgage Loan Calculator"),
  
  sidebarLayout(
    sidebarPanel(
       numericInput("principal", "Principal ($)", value = 500000, step = 1000),
       numericInput("int_rate", "Interest Rate (p.a.)", value = 5.00, step = 0.01),
       numericInput("term", "Term (year)", value = 20)
    ),
    mainPanel(
      h3("Your monthly payment is"),
      textOutput("monthly_repayment"),
      h3("Over the life of this loan, your total payment is"),
      textOutput("total_payment"),
      h3("The total interest paid is"),
      textOutput("interest_component")
      
      
    )
  )
))
