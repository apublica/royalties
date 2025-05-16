# Carregar pacotes necessários
library(deflateBR)   # Correção de valores monetários pela inflação (IPCA)
library(tidyverse)   # Manipulação e visualização de dados
library(lubridate)   # Manipulação de datas

# Ler os dados a partir do arquivo CSV
dados <- read_csv("data/royalties_99-24.csv")

# Padronizar e converter a coluna 'total' para numérico
# Remove pontos (milhares), substitui vírgulas por ponto e converte para número
dados <- dados |>
  mutate(
    total_ipca = gsub("\\.", "", total),
    total_ipca = gsub(",", ".", total_ipca),
    total_ipca = as.numeric(total_ipca)
  )

# Visualizar a estrutura dos dados
glimpse(dados)

# Criar uma nova coluna com data no formato "12/MM/AAAA"
# O dia "12" é fixo apenas para representar o mês
dados <- dados |>
  mutate(ano_formatado = paste0("12/", ano))

# Converter para data no formato mês/ano
dados$ano_corrigido <- lubridate::my(dados$ano_formatado)

# Reforçar que 'total_ipca' está no formato numérico
dados$total_ipca <- as.numeric(dados$total_ipca)

# Emitir alerta caso existam valores não numéricos convertidos para NA
if (any(is.na(dados$total_ipca))) {
  warning("Existem valores não numéricos na coluna 'total'. Esses valores foram convertidos para NA.")
}

# Corrigir os valores pela inflação acumulada (IPCA) até abril de 2025
dados_corrigidos <- dados |>
  mutate(total_ipca = deflateBR::ipca(
    total_ipca, dados$ano_corrigido, "04/2025"))

# Visualizar a estrutura dos dados corrigidos
glimpse(dados_corrigidos)

# Converter os valores numéricos para texto (string) para facilitar leitura no Google Sheets
dados_corrigidos <- dados_corrigidos |>
  mutate(total_ipca = as.character(total_ipca))

# Exportar os dados corrigidos para a pasta 'royalties/data'
write_csv2(dados_corrigidos, "data/dados_corrigidos_1999-2024.csv")
