
library(shiny)
FAHRENHEIT <- function(id3) ((1.8*id3)+32)
KELVIN <- function(id3) (273+id3)
shinyServer(
function(input, output) {
output$oid1 <- renderPrint({input$id1})
output$oid2 <- renderPrint({input$id2})
output$oid3 <- renderPrint({input$id3})
output$odate <- renderPrint({input$date})
output$fahrenheit <- renderPrint({FAHRENHEIT(input$id3)})
output$kelvin <- renderPrint({KELVIN(input$id3)})
}
)