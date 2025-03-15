####################################
# Shiny App - Simple User Input and Output
# Author: Satkar Karki
# Description: 
# This is a basic Shiny web application that demonstrates 
# how user input is collected through text fields, processed 
# in the server, and displayed dynamically in the UI. 

# Key Features:
# - Uses the `shiny` and `shinythemes` packages.
# - Implements a `navbarPage` layout with multiple tabs.
# - Accepts user input (first name and surname) through text fields.
# - Displays the combined input in real-time using `renderText()`.
# - Uses the "yeti" theme from `shinythemes`.

# How It Works:
# 1. The UI (`fluidPage`) defines the app layout with navigation tabs.
# 2. The Server (`server function`) listens for user input and updates the output dynamically.
# 3. The `shinyApp()` function runs the app, linking the UI and Server together.
####################################


# Load R packages
library(shiny)
library(shinythemes)


# Define UI
# This function creates a fluid layout for the Shiny app, 
# meaning the UI will adjust dynamically based on the browser window size. 
# we define theme within the fluid page which can be browsed via the Shiny website
ui <- fluidPage(theme = shinytheme("yeti"),  
                # This creates a multi-page navigation bar layout.
                navbarPage(
                  # theme = "cerulean",  # <--- To use a theme, uncomment this
                  "My first app",
                  #Creates the first tab named "Navbar 1" in the navigation bar.
                  tabPanel("Navbar 1",
                           sidebarPanel(
                             # Adds a header (h3) with the label "Input"
                             tags$h3("Input:"), #h3 means smaller header
                             # Creates a text input box for the user's given name.
                             textInput("txt1", "Given Name:", ""), #txt1 will be sent to server
                             textInput("txt2", "Surname:", ""), #txt2 will be sent to server
                             
                           ), # sidebarPanel
                           mainPanel(
                             h1("Header 1"), #h1 means larger header
                             
                             h4("Output 1"), #h4 means much smaller now
                             verbatimTextOutput("txtout"), #returns a simple text-output
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Navbar 2", "This panel is intentionally left blank"),
                  tabPanel("Navbar 3", "This panel is intentionally left blank")
                  
                ) # navbarPage
) # fluidPage


# Define server function  
# the server function handles the app's logic
# input : stores users input (text entered in the UI)
# output : stores outputs that will be displayed in the UI

server <- function(input, output) { 
  # renderText is a shiny function that generates text output dynamically
  output$txtout <- renderText({
    # the paste function combines txt1 and txt2 to give desired output
    paste( input$txt1, input$txt2, sep = " " )
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server) # This function initializes and runs the Shiny application.