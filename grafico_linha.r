# Carregar pacotes
library(rbcb)
library(ggplot2)

# Coleta de dados
tabela <- rbcb::get_series(code = c("cambio" = 1), start_date = "2000-01-01")

# Gráfico de linha
tabela |>
  ggplot2::ggplot() +
  ggplot2::aes(x = date, y = cambio) +
  ggplot2::geom_line()
