

# Dependencies ------------------------------------------------------------
library(shiny)


# UI ----------------------------------------------------------------------
# Layout function - Sets up basis visual structure of the page 
ui <- fluidPage(
  
  # Input control - Lets the user interact with the app by providing a value. 
  # Here it is a select box with data set options 
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")), 
  
  
  # Output controls - This tells shiny where to put rendered output 
  verbatimTextOutput("summary"), 
  tableOutput("table")
)


# Server ------------------------------------------------------------------
server <- function(input, output, session){
  
  # Recipe for outputs 
  
  output$summary <- renderPrint({
    dataset <- get(input$dataset, "package:datasets")
    summary(dataset)
  })
  
  output$table <- renderTable({
    dataset <- get(input$dataset, "package:datasets")
    dataset #returns the data set 
  })
  
}


# Run server --------------------------------------------------------------
shinyApp(ui, server)


