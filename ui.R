library(shiny)
library(ggplot2)
shinyUI(pageWithSidebar(
        
        headerPanel("Diamond Finder"),
        sidebarPanel(
                selectInput("cut","Quality of the Cut",list("Fair"="Fair","Good"="Good","Very Good"="Very Good","Premium"="Premium","Ideal"="Ideal"),selected="Ideal"),
                selectInput("color","Diamond Color",list("J"="J","I"="I","H"="H","G"="G","F"="F","E"="E","D"="D"),selected="D"),
                helpText("Note: The diamond colour is from J(worst) to D(best)"),
                selectInput("clarity","Clarity",list("I1"="I1","SI2"="SI2","SI1"="SI1","VS2"="VS2", "VS1"="VS1", "VVS2"="VVS2", "VVS1"="VVS1", "IF"="IF"),selected="IF"),
                helpText("Note: Clarity is a measurement of how clear the diamond is. From I1(worst) to IF(best)"),
                br(),
                sliderInput("price","Price",320,18900,value=c(5000,17000)),
                checkboxInput("asc","Ascending Order By Price",value=TRUE),
                submitButton("Update")
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("Table",tableOutput("table")),
                        tabPanel("Summary",h3("Dataset Description"),
                                 p("All the data are from the diamonds dataset in the ggplot2 package.It is a dataset containing the prices and other attributes of almost 54,000 diamonds. The variables are as follows:"),br(),
                                 tags$ul(
                                         tags$li("price: price in US dollars ($326–$18,823)"),
                                         tags$li("carat: weight of the diamond (0.2–5.01)"),
                                         tags$li("cut: quality of the cut (Fair, Good, Very Good, Premium, Ideal)"),
                                         tags$li("color: diamond colour, from J (worst) to D (best)"),
                                         tags$li("clarity: a measurement of how clear the diamond is (I1 (worst), SI1, SI2, VS1, VS2, VVS1, VVS2, IF (best))"),
                                         tags$li("depth: total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43–79)"),
                                         tags$li("table: width of top of diamond relative to widest point (43–95)")
                                 ),br(),
                                 h3("Price Summary"),verbatimTextOutput("summary"),br(),h5(textOutput("ave")),h5(textOutput("carat")))
                )
        )
))
