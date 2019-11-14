output$pricePlot <- renderPlot({

diamonds%>%
  filter(
    price >= min(priceBins[[input$priceGroupBy]])
      & price <= max(priceBins[[input$priceGroupBy]])
  ) %>%
  ggplot(aes(depth, fill = cut)) + geom_histogram(alpha = .2) + xlim(55, 70)

})