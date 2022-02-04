#' The application User-Interface#' 
#' @param request Internal parameter for `{shiny}`. DO NOT REMOVE 
#' @import shiny 
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  # YONTEM 3: Your application UI logic
  # header <- dashboardHeader(title = "gokhanin programi")
  # sidebar <- dashboardSidebar(width = 300, h1("Gokhan Kocturk"))
  # body <- dashboardBody(
  #   sliderInput("kaydir", "KAYDIR", min = 10, max = 100, value = 50),
  #   textOutput("yazdir")
  # )
  # ui <- dashboardPage(header, sidebar, body)
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),

    # YONTEM 1: Your application UI logic
    header <- dashboardHeader(title = "GOKHANIN PROGRAMI"),
    sidebar <- dashboardSidebar(width = 300, h1("Gokhan Kocturk")),
    body <- dashboardBody(
            sliderInput("kaydir", "KAYDIRRR", min = 1, max = 88, value = 5),
            textOutput("yazdir"),
            mod_name_of_module1_ui("test_icin_yazildi")
          ),
    ui <- dashboardPage(header, sidebar, body)
    
    # YONTEM 2: Your application UI logic 
    # dashboardPage(
    #   dashboardHeader(title = "gokhanin programi"),
    #   dashboardSidebar(width = 300, h1("Gokhan Kocturk")),
    #   dashboardBody(
    #     sliderInput("kaydir", "KAYDIR", min = 1, max = 100, value = 50),
    #     textOutput("yazdir")
    #   )
    # )
  )
  return(ui) # YONTEM 1'e ait, YONTEM 2 ve YONTEM 3'te yok bu satir.
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny 
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'golex'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

