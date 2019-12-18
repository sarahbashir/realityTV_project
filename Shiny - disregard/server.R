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
  # Define server logic for slider examples ----
  server <- function(input, output) {
    
    # Reactive expression to create data frame of all input values ----
    sliderValues <- reactive({
      
      data.frame(
        Name = c("Integer",
                 "Decimal",
                 "Range",
                 "Custom Format",
                 "Animation"),
        Value = as.character(c(input$integer,
                               input$decimal,
                               paste(input$range, collapse = " "),
                               input$format,
                               input$animation)),
        stringsAsFactors = FALSE)
      
    })
    
    # Show the values in an HTML table ----
    output$values <- renderTable({
      sliderValues()
    })
    
  }  
  
  
  
  
  
}
