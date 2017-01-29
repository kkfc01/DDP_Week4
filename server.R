library(shiny)

shinyServer(function(input, output) {
   output$monthly_repayment = renderText(input$principal*(input$int_rate/100/12)*(1+(input$int_rate/100/12))^(input$term*12)/((1+(input$int_rate/100/12))^(input$term*12)-1))
   output$total_payment = renderText(input$term*12*input$principal*(input$int_rate/100/12)*(1+(input$int_rate/100/12))^(input$term*12)/((1+(input$int_rate/100/12))^(input$term*12)-1))
   output$interest_component = renderText(input$term*12*input$principal*(input$int_rate/100/12)*(1+(input$int_rate/100/12))^(input$term*12)/((1+(input$int_rate/100/12))^(input$term*12)-1)-input$principal)
})
