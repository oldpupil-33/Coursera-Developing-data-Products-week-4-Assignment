
library(shiny);library(ggplot2);library(dplyr)

bcl <- read.csv("mydata.csv", stringsAsFactors = FALSE)

shinyServer(function(input, output) {
    output$coolplot <- renderPlot({
        filtered <- bcl %>% filter(price>=input$priceInput[1],
                           price<=input$priceInput[2],
                           cut==input$cutInput,
                           clarity==input$clarityInput
                           )
        ggplot(filtered,aes(x=carat,y=price))+
            geom_point(aes(color="red",size=3))
    })
    output$results <- renderTable({
        filtered <- bcl %>% filter(price>=input$priceInput[1],
                                   price<=input$priceInput[2],
                                   cut==input$cutInput,
                                   clarity==input$clarityInput
                                   )
        filtered
    })
})

