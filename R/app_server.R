#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
    output$yazdir <- renderText({
      input$kaydir
    })
    mod_name_of_module1_server("test_icin_yazildi")
}




