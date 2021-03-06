library(shiny)

ui <- fluidPage(
  
  "Hello World",
 
  selectInput("derp", label = "Derps", choices = c("A", "B", "C")), 
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  
  
  #UI 
  verbatimTextOutput("summary"),
  tableOutput("table")
  
  
)


server <- function(input, output, session){
  
  
  #Inputs into UI
  output$summary <- renderPrint({
    dataset <- get(input$dataset, "package:datasets")
    summary(dataset)
  })
  
  output$table <- renderTable({
    
    dataset <- get(input$dataset, "package:datasets")
    dataset
    
  })
  
}#End of server function 

shinyApp(ui, server)