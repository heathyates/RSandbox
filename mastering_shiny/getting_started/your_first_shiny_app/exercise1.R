
# Libraries ---------------------------------------------------------------
library(shiny)


# UI ----------------------------------------------------------------------
ui <- fluidPage(
  
  textInput("name", "What's your name?"),
  textOutput("name_output") #I don't like that you can name this the same
  
)



# Server ------------------------------------------------------------------
server <- function(input, output, session){
  
  output$name_output <- renderText({
     paste0("Hello ", input$name)
  })
  
}



# Run server --------------------------------------------------------------
shinyApp(ui, server)


