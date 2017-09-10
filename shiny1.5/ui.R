library(shiny)
shinyUI(fluidPage(
        titlePanel("Plot Random Numbers"),
        sidebarLayout(
                
                sidebarPanel(
                        numericInput("numeric", "How Many Random Numbers Should be Plotted?",
                                value = 1000, min = 1, max = 1000, step = 1),
                        
                        sliderInput("sliderX", "Pick Minimum and Maximum X Values",
                                    -100, 100, value = c(-50, 50)),
                        
                        sliderInput("sliderY","Pick Minimum and Maximum Y Values",
                                    -100, 100, value = c(-50, 50)),
                        
                        checkboxInput("show_xlab", "show/hide X Axis Label", value = TRUE),
                        checkboxInput("show_ylab", "show/hide Y Axis Label", value = TRUE),
                        checkboxInput("show_title", "show/hide title")
                ),
                
        mainPanel(
                        h3("Graph of Random Points"),
                        plotOutput("plot1")
                )
        
        
        
        
        )
))