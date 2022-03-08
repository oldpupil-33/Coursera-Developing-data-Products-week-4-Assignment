
library(shiny)

shinyUI(fluidPage(
                 titlePanel(div("Beautyful Diamonds prices",style="color:blue")),
                 sidebarLayout(
                     sidebarPanel(
                         sliderInput("priceInput","Price",min = 300,max=20000,
                                     value = c(2000,10000),pre = "$"),
                         radioButtons("cutInput","Product cut",
                                      choices = c("Ideal","Very Good","Premium","Good","Fair"),
                                      selected = "Ideal"),
                         selectInput("clarityInput","Clarity",
                                     choices = c("IF","SI2","VS1","VS2","VVS2","VVS1","SI1","I1"))
                     ),
                     mainPanel(
                         plotOutput("coolplot"),
                         br(),br(),
                         tableOutput("results")
                     )
                 )

)
)
