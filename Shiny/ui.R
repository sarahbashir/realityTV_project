library(shiny)

ui <- navbarPage(title = "Snazzy title",
                 
                 tabPanel("About",
                          tabsetPanel(type = "tabs",
                                      tabPanel("Overview",
                                      
                                      mainPanel(
                                          h2("Abstract"),
                                          p("This project seeks to analyze the relationship between Twitter data and the 
                                                             TV shows: the Bachelor and the Bachelorette. "),
                                          h3("The Data"), br(),
                                          p("This project utilizes two years worth of Twitter data parsed into CSV files.
                                            Data for each season was extracted by looking at the dates between times contestants were
                                            annoucned and one week after the final episode was aired. For each season, a set of key words 
                                            were used to identify tweets relevant tweets. Key words included the twitter handle of each contestant,
                                            as well as 'thebachelor', 'thebachelorette', and 'bachelorabc'. Intially, words like 'bachelor' were included,
                                            but this lead to high amounts of noise. By narrowing the key words to contestants' twitter handles, 
                                            the data set became significnatly smaller, but we were more confident that the tweets are relevant
                                            to the show of interest.In addition to parsing tweets into geographic location, time, and tweet content, we were also able to measure the
                                            sentiment of each tweet. A package called ", 
                                            a(href="https://textblob.readthedocs.io/en/dev/"
                                              , "Text Blob"), "was used to assign sentiment from a scale of -1 to 1, with -1 being negative, 
                                            0 being neutral, and 1 being positive."),
                                          p("A critical problem of this method is dealing with contestants who do not have Twitter. This was extremely 
                                            problematic for the Bachelorette 2018, because the winner of the season had no Twitter account. To compensate for this, 
                                            we parsed a second dataset for this seasos. This is likely to be a noisy dataset, but the results of the model can be 
                                            compared to see if the noise made a significant impact. Another flaw in the data was the varying size of each data set. For instance, the Bachelor 2018 was very large,
                                            consisting of 1,914 tweets. This is likely due to the fact that this season had a unique ending where the Bachelor
                                            ended up leaving the finalist for the runner-up in a very short time frame. Other seasons had very few, nearly 300,
                                            tweets. This is something to be mindful of when interpreting results"), 
                                          p("The tab called 'Cleaned data' gives more information about what the final 
                                            data set looks like for each season.")
                                          )
                                      
                                      ),
                                          
                          tabPanel("Cleaned data",
                                   sidebarLayout(
                                     sidebarPanel(              
                                       radioButtons("Season_data", "Season",
                                                    c("Bachelor 2018" = "Bachelor_2018",
                                                      "Bachelor 2019" = "Bachelor_2019",
                                                      "Bachelorette 2018" = "Bachelorette_2018",
                                                      "Bachelorette 2019" = "Bachelorette_2019"))),
                                     
                                   mainPanel(tableOutput(outputId = 'table')))),
                          
                          tabPanel("Credit and Acknowledgements", br(), br(),
                                   p("This project was made created by:"),
                                   tags$div(
                                     tags$ul(
                                       tags$li(p("Sarah Bashir")),
                                       tags$li(p("Ethan Ong")),
                                       tags$li(p("Lindsey Tam"))
                                       )), br(), br(), 
                                   p("Thank you to", 
                                     a(href="https://www.cmc.edu/academic/faculty/profile/michael-izbicki"
                                       , "Professor Mike Izbicki"), "a Professor Mike Izbicki at Claremont
                                          McKenna College who generously shared his two years worth of Twitter data.")))
                          
                          ),
                          
                          
                 
                 
                 
                 navbarMenu("Predictive Model",
                            tabPanel("Methodology",
                                     
                                     mainPanel(
                                       
                                     h2("Creating the Dataset"), 
                                     p("Generating the dataset used in the model required bootstrapping tweet data from each show and season. 
                                       The amount bootstrapped was dependent on the size of data for each show's season. For example, 
                                       in the Bachelor 2018 there were 1,914 tweets that were bootstrapped with size 1,914. This was
                                       repeated for each dataset over a range of different times, ranging from ______. After the data was generated, 
                                       the average tweet sentiment for each contestant and the total number of tweets that referenced the contestant 
                                       (through their twitter handle), were calculated." ), br(), 
                                     p("The purpose of bootstrapping the data was to ...."),
                                      h2("Types of classification models"),
                                      p("There were 5 different types of linear classification models used to generate predictions. Note that although 
                                        Naive Bayes is not always linear, in this case it is becase the output is binary (winners and losers). 
                                        Below is a quick summary of each type of classifier used."),
                        
                                      tags$div(
                                        tags$ul(
                                          tags$li(p( a(href="https://scikit-learn.org/stable/modules/naive_bayes.html", "Naive Bayes"),
                                          "is a supervised classification model that uses the 'naive' assumption that feautures are independent.
                                          In this model, we have 60 feautures, which are the average sentiment and total tweet count of each of the 30 
                                          contestants.")),
                                          tags$li(p( a(href="https://scikit-learn.org/stable/modules/generated/sklearn.discriminant_analysis.LinearDiscriminantAnalysis.html", "Linear 
                                           Discriminant Analysis"), "is a classification model that creates a linear decision boundary that seperates multiple classes.
                                          In this model, classes are the 30 contestants in each season.")),
                                          tags$li(p( a(href="https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LogisticRegression.html", 
                                                       "Logistic Regression"), "is ")),
                                          tags$li(p( a(href="https://scikit-learn.org/stable/modules/generated/sklearn.svm.LinearSVC.html", 
                                                       "Linear Support Vector Classification"), "is ")),
                                          tags$li(p( a(href="https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.SGDClassifier.html", 
                                                       "Stochastic Gradient Descent Classifier"), "is "))
                                          
                                          )
                                      ))
                                     
                                     ),
                            tabPanel("Results",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overall",
                                     fluidPage(
                                       div(img(src = 'prediction_overall3.png', align='left', height = '500px', width = '1000px'))),
                                     mainPanel( br(), br(), br(),
                                       p("For "))),
                                     
                                     tabPanel("Optimizing LDA",
                                              fluidPage(
                                                div(img(src = 'prediction_overall3.png', align='left', height = '800px', width = '1000px'))),
                                              mainPanel(
                                                p(" add someanalysis here"))
                                              )
                                     
                                     
                                     )
                                     
                                     )
                  
                            
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
                
               
                 
                 
                 
            
                 