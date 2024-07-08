# Carregar pacotes
library(gtrendsR)
library(ggplot2)

# Coleta de dados de exemplo (termo de pesquisa "Artificial intelligence" no Google)
tabela <- gtrendsR::gtrends(
  keyword = "Artificial intelligence",
  geo = c("BR", "US"),
  time = "all",
  onlyInterest = TRUE
)

# Gráfico de boxplot
tabela$interest_over_time |>
  ggplot2::ggplot() +
  ggplot2::aes(x = hits, y = geo) +
  ggplot2::geom_boxplot()
