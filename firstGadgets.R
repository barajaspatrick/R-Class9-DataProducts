library(shiny)
library(miniUI)

myFirstGadget <- function() {
        ui <- miniPage(
                gadgetTitleBar("my First Gadget")
        )
        server <- function(input, output, session) {
                # the done button closes the app
                observeEvent(input$done, {
                        stopApp()
                })
        }
        runGadget(ui, server)
}

myFirstGadget()