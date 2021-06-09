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
  
  #Helper Function 
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  
  #Inputs into UI
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$table <- renderTable({
    
    dataset()
    
  })
  
}#End of server function 

shinyApp(ui, server)