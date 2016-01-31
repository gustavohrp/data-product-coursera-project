
lookup_g = function(exchange){
  g_values = data.frame(exchange_rate=c("USD - US Dollar","EUR - Euro", "GBP - British Pound","AUD - Australian Dollar","CAD - Canadian Dollar","ARS - Argentine Peso","CHF - Swiss Franc","INR - Indian Rupee","CLP - Chilean Peso"), g=c(0.25006, 0.23087, 0.17560,0.35292, 0.34949, 3.47253,  0.25582, 16.9763, 178.240))
  g_values$g[g_values$exchange_rate==exchange]
}

calculate_force = function(real, currency){
  real*currency
}

shinyServer(
  
  
  function(input, output){
    
    
    output$inputcurrency = renderPrint({input$currency})
    output$inputexchange_rate = renderText({input$exchange_rate})
    
    
    
    output$prediction = renderText(calculate_force(lookup_g(input$exchange_rate),input$currency))
    
    
  }      
  
)