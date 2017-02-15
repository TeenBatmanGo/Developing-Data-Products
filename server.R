library(shiny)
library(ggplot2)
library(dplyr)
shinyServer(function(input,output) {
        diamonds<-diamonds[,1:7]
        dat<-reactive({
                data<-subset(diamonds,cut==input$cut & color==input$color & clarity==input$clarity & price %in% seq(input$price[1],input$price[2]))
                if(input$asc){
                        arrange(data,price)
                }
                else{
                        arrange(data,desc(price))
                }
        })
        
        
        
        output$table<-renderTable({
                data.frame(dat())
        })
        output$summary <- renderPrint({
               summary(dat()$price)
        })
        output$ave<-renderText({
                paste("The average price of the selected diamonds is $",round(mean(dat()$price),2),".",sep="")
        })
        output$carat<-renderText({
                paste("The average weight of the selected diamonds is",round(mean(dat()$carat),2))
        })
})
