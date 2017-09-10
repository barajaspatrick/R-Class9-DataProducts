library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$SampleDistribution <- renderPlot({
    x <- input$X   
    y <- rnorm(x, mean = 0, sd = 1)
    hist(y)

  })

})
