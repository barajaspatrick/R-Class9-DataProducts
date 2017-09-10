library(shiny)
shinyServer(Function(input, output) {
        
        output$plot1 <- renderPlot({ ## all reactive expressions should have curly braces.
                set.seed(2017-07-03)
                number_of_points <- input$numberic
                minX <- input$sliderX[1]
                maxX <- input$sliderX[2]
                minY <- input$sliderY[1]
                maxY <- input$sliderY[2]
                
                dataX <- runif(number_of_points, minX, maxX)
                dataY <- runif(number_of_points, minY, maxY)
                
                ## if checkbox"show_xlab" is checked show "X Axis", else show nothing.
                xlab <- ifelse(input$show_xlab, "X Axis", "")
                ylab <- ifelse(input$show_ylab, "Y Axis", "")
                main <- ifelse(input$show_title, "Title", "")
                
                plot(dataX, dataY, xlab = xlab, ylab = ylab, main = main,
                     xlim = c(-100, 100), ylin = c(-100, 100))
        })
})
