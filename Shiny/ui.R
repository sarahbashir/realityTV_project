library(shiny)

ui <- navbarPage(title = "Snazzy title",
                 
                 tabPanel("About",
                          
                          mainPanel(
                            h1("Abstract"),
                            p("This is what our project is about"),
                            h1("The Data"), 
                            p("This is where our data came from"),
                            h1("Ethical Considerations"), 
                            p("This is where our data came from"),
                            h1("References"), 
                            p("This is where our data came from")
                            
                          )
                          
                          
                          ), 
                 
                 
                 
                 navbarMenu("Predictive Model",
                            tabPanel("Methodology"),
                            tabPanel("Results")
                  
                            
                ),
                
               tabPanel("Tweet origins",
                                    
                        sidebarLayout(
                          sidebarPanel(              
                                      radioButtons("Season_map", "Season",
                                                   c("Bachelor 2018" = "Bachelor_2018",
                                                     "Bachelor 2019" = "Bachelor_2019",
                                                     "Bachelorette 2018" = "Bachelorette_2018",
                                                     "Bachelorette 2019" = "Bachelorette_2019"))),
                          mainPanel(
                            plotOutput("image1"))
                          
                          
                          )),
                tabPanel("Tweet trends",
                                    
                                    sidebarLayout(
                                      sidebarPanel(
                                        
                                        radioButtons("Season_trends", "Season",
                                                     c("Bachelor 2018" = "Bachelor_2018",
                                                       "Bachelor 2019" = "Bachelor_2019",
                                                       "Bachelorette 2018" = "Bachelorette_2018",
                                                       "Bachelorette 2019" = "Bachelorette_2019"))),
                                      
                                      mainPanel(
                                        plotOutput("image2"))
                                      
                )
                                    
                                    
                     ))
                
               
                 
                 
                 
            
                 