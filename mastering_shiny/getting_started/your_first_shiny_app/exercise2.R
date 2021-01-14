
# library -----------------------------------------------------------------
library(shiny)


# ui ----------------------------------------------------------------------
ui <- fluidPage(
  
  sliderInput("a", label = "If x is ", min = 1, max = 50, value = 30), 
  sliderInput("b", label = "If y is ", min = 1, max = 50, value = 5), 
  print("then, x times y is"), 
  textOutput("product")
  
)

# server ------------------------------------------------------------------
server <- function(input, output, session){
  
  output$product <- renderText({
    input$a * input$b
  })
  
}

# app ---------------------------------------------------------------------
shinyApp(ui, server)


