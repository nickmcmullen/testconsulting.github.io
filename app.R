shinyApp(
  ui = fluidPage(
    titlePanel("Request a Quote"),
    div(
      id = "form",
      
      textInput("name", "Name", ""),
      textInput("email", "Email Address"),
      textInput("phone", "Phone Number"),
      checkboxInput("call", "Check if you'd like to receive a call", FALSE),
      sliderInput("hours_estimate", "Estimate the number of hours needed", 0, 50, 1, ticks = TRUE),
      selectInput("service", "Service requested",
                  c("",  "Consultation", "Analytical/Data Services", "Both")),
      actionButton("submit", "Submit", class = "btn-primary")
    )
  ),
  server = function(input, output, session) {
  }
)

