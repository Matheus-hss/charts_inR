# Carregar pacotes
library(ipeadatar)
library(dplyr)
library(ggplot2)

# Coletar dados
ipca <- ipeadatar::ipeadata("PRECOS_IPCAG")
desemprego <- ipeadatar::ipeadata("WEO_DESEMWEOBRA")

# Tratar e cruzar tabelas
tabela <- dplyr::inner_join(
  x = dplyr::mutate(ipca, data = date, ipca = value, .keep = "none"),
  y = dplyr::mutate(desemprego, data = date, desemprego = value, .keep = "none"),
  by = "data"
) |> 
  dplyr::filter(data >= as.Date("2000-01-01"))

# Gráfico de dispersão
tabela |>
  ggplot2::ggplot() +
  ggplot2::aes(x = desemprego, y = ipca) +
  ggplot2::geom_point()
