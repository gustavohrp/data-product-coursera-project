shinyUI(
  
  pageWithSidebar(
    
    headerPanel("Calculation to Convert Brazilian Real"),
    
    sidebarPanel(
      h4('Documentation: How to use'),
      p('This very simple app is designed to convert Brazilian Currency into other Currencies Countries.'),
      p('On the panel on the right side of this page, select a value for the Real (BRL) in the slider, choose a different currency in the selection below the slider and click the button to perform the calculation.'),
      p('The currency rankings show that the most popular Brazil Real exchange rate and values are from the Mid-market rates: 2016-01-31 13:55 UTC')
      
    ),
    
    mainPanel(
      
      sliderInput("currency", "Real (BRL):",min = 0, max = 1000, value = 0),
      selectInput('exchange_rate', 'Country Currency', c("USD - US Dollar","EUR - Euro", "GBP - British Pound","AUD - Australian Dollar","CAD - Canadian Dollar","ARS - Argentine Peso","CHF - Swiss Franc","INR - Indian Rupee","CLP - Chilean Peso"), multiple = FALSE, selectize = TRUE, width = NULL),
      submitButton('Calculate'),
      
      h3('Convert Calculation'),
      h4('Brazilian Real (BRL)'),
      verbatimTextOutput("inputcurrency"),
      h4('Country Currency'),
      verbatimTextOutput("inputexchange_rate"),
      h4('The Exchange Rate is'),
      verbatimTextOutput("prediction"),
      h4("")
    )
  )      
  
)