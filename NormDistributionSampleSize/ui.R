library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Normal Distribution and Sample Size"),
        
        # Sidebar with a slider input for number of bins
        sidebarLayout(
                sidebarPanel(
                        sliderInput("X",
                                    "Number of Samples",
                                    min = 10,
                                    max = 1000,
                                    value = 10,
                                    step = 10
                                    )
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("SampleDistribution")
                )
        )
))

