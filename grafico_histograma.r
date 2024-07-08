 # Bibliotecas
library(rbcb)
library(ggplot2)

# Coleta de dados
tabela <- rbcb::get_series(c("meta" = 13521))
tabela

# Gráfico de histograma
tabela |>
  ggplot2::ggplot() +
  ggplot2::aes(x = meta) +
  ggplot2::geom_histogram()
