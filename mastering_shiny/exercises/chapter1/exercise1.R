#Create an app that greets the user by name. 
#You don’t know all the functions you need to do this yet, so I’ve included some lines of code below. 
#Think about which lines you’ll use and then copy and paste them into the right place in a Shiny app.



ui <- fluidPage(
  
  #Input UI
  textInput("name", label = "What is your name?"),
  
  #OutputUI
  textOutput("greeting")
  
)


server <- function(input, output, session){
  
  output$greeting <- renderText({
    paste0("Hello ", input$name)
    
  })
  
}



shinyApp(ui, server)