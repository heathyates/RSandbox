library(shiny)

ui <- fluidPage(
  
  "Hello World",
 
  selectInput("derp", label = "Derps", choices = c("A", "B", "C")), 
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")), 
  verbatimTextOutput("summary"),
  table("table")
  
  
)


server <- function(input, output, session){
  
  }

shinyApp(ui, server)