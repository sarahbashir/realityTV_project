library(shiny)

server <- function(input, output) {
  
mydata <- reactive({
  name <- paste(input$Season_data,'.csv', sep='')
  tbl <- read.csv(file = name)
  return(tbl)
})
  output$table <- renderTable({
    mydata()
  })
  
  
  
  
  
  
}
