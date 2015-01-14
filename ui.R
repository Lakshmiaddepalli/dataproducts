library(shiny)
shinyUI(
pageWithSidebar(
# Application title
headerPanel("TEMPERATURE CONVERSION"),

sidebarPanel(
numericInput('id1', 'ID no:', 0, min = 1, max = 200, step = 1),
checkboxGroupInput("id2", "Reason for conversion",
c("Analysis" = "Analysis",
"Medical Study" = "Medical Study",
"Experiment" = "Experiment")),
numericInput('id3', 'Enter Temperature in Celsius:', 0, min = 1, max = 1000, step = 1),
dateInput("date", "Date:"),
submitButton('Submit')
),
mainPanel(
h4('Conversion DETAILS:'),
h4('Your ID no:'),
verbatimTextOutput("oid1"),
h4('Your Reason for conversion:'),
verbatimTextOutput("oid2"),
h4('Your Temperature in celsius:'),
verbatimTextOutput("oid3"),
h4('Date:'),
verbatimTextOutput("odate"),
h4('Your Temperature in Fahrenheit:'),
verbatimTextOutput("fahrenheit"),
h4('Your Temperature in Kelvin:'),
verbatimTextOutput("kelvin"),
strong("ABOUT THIS APP:"),
p("This is shiny application which predicts the temperature in both Fahrenheit and Kelvin as per your input.
   The user panel of the lefthand side ask for the following inputs:"),
p("1) your ID NO: which is usually every user has to use this app"),

p("2) your Reason for Conversion: Gives us the reason for conversion"),

p("3) The user enters the temperature in celcius and gets the outcome in Fahrenheit and Celcius by their respective formulas."),

p("4) The date field mentions the date of conversion"),

p(" The submit button sends the data to server.R,which processes the required data to  give a predictive outcome,that is it calculates the temperature."),

p(" The display side,on the right side of the window,displays the conversion information as  per entered and gives the predicted output.")
)
)
)