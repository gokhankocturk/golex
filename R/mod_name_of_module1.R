#' name_of_module1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_name_of_module1_ui <- function(id){
  ns <- NS(id)
  tagList(
    sliderInput(ns("sayisec"), "Sayi Sec", min = 1, max = 100, value = 10),
    textOutput(ns("sayiyazdir"))
  )
}
    
#' name_of_module1 Server Functions
#'
#' @noRd 
mod_name_of_module1_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    aaa <- reactiveValues(value = NULL)
    output$sayiyazdir <- renderText({
      aaa$value <- input$sayisec * 555
    })
  })
}
    
## To be copied in the UI
# mod_name_of_module1_ui("name_of_module1_ui_1")
    
## To be copied in the server
# mod_name_of_module1_server("name_of_module1_ui_1")
