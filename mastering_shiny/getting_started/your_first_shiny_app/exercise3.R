
# library -----------------------------------------------------------------
library(shiny)


# ui ----------------------------------------------------------------------
ui <- fluidPage(
  
  sliderInput("n", label = "If x is ", min = 1, max = 50, value = 30), 
  print("then x times 5 is"), 
  textOutput("product")
  
)

# server ------------------------------------------------------------------
server <- function(input, output, session){
  
  output$product <- renderText({
    input$n * 5
  })
  
}

# app ---------------------------------------------------------------------
shinyApp(ui, server)


