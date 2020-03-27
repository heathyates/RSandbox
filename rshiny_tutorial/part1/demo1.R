library(shiny)


ui <- fluidPage(
      #Input Functions
      sliderInput(inputId = "num", 
                  label = "Choose a number", 
                  value = 25, 
                  min = 1, 
                  max = 100)
   
  
      #Output Functions 
  
  
  
  
)


server <- function(input, 
                   output){}

shinyApp(ui = ui, 
         server = server)