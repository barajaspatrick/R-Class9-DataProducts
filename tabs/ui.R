library(shiny)

shinyUI(fluidPage(
        titlePanel("Tabs!"),
        sidebarLayout(
                sidebarPanel(
                        textInput("box1", "Enter Tab 1 Text:", value = "Tab 1!"),
                        textInput("box2", "Enter Tab 1 Text:", value = "Tab 2!"),
                        textInput("box3", "Enter Tab 1 Text:", value = "Tab 3!")
                ),
                mainPanel(
                        tabsetPanel(type = "tabs",
                                    tabsetPanel("Tab 1", br(), textOutput("out1")),
                                    tabsetPanel("Tab 2", br(), textOutput("out2")),
                                    tabsetPanel("Tab 3", br(), textOutput("out3"))
                                )
                )
        )
))
