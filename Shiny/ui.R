library(shiny)

ui <- navbarPage(title = "The Bachelor",
        
                 tabPanel("About"),
                 tabPanel("Component 2"),
                 navbarMenu("More",
                            tabPanel("Sub-Component A"),
                            tabPanel("Sub-Component B")))
                 