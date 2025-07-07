# Metodologia
A reportagem analisou o impacto da arrecadação de royalties e participações especiais (PEs) do petróleo sobre indicadores socioeconômicos de municípios de seis estados: Rio de Janeiro, São Paulo, Espírito Santo, Bahia, Rio Grande do Norte e Amazonas.

## Fonte dos dados e padronização
Os dados de royalties e PEs foram extraídos da plataforma [InfoRoyalties](https://inforoyalties.ucam-campos.br/), desenvolvida pela Universidade Candido Mendes (UCAM). Os valores, referentes ao período entre 1999 e 2024, foram corrigidos pela inflação acumulada no período, com base em índices oficiais. O código pode ser consultado aqui, bem como a tabela com o seu resultado ([tabela 1](https://github.com/apublica/royalties/blob/main/data/tabela01_royalties_por_ano_ipca.csv)).

A partir do total arrecadado por cada município no período, foi calculado o valor per capita com base na [população estimada](https://www.ibge.gov.br/estatisticas/sociais/populacao/9103-estimativas-de-populacao.html) pelo IBGE em 2024 ([tabela 2](https://github.com/apublica/royalties/blob/main/data/tabela02_royalties_populacao.csv)). Os 15 municípios que mais receberam royalties e participações especiais por habitante foram selecionados para análise aprofundada — entre eles, 12 do Rio de Janeiro, 2 do Espírito Santo e 1 de São Paulo.
Para avaliar a aplicação dos recursos e o desempenho social desses municípios, foram analisados dez indicadores socioeconômicos, considerando sempre dados mais recentes disponíveis, preferencialmente de 2023 ou 2024. São eles:

* **Mortalidade infantil (0 a 4 anos)** ([tabela 3](https://github.com/apublica/royalties/blob/main/data/tabela03_mortalidade_infantil.csv)): dados de 2023 do TabNet/Datasus, trabalhados pelo [IPS Brasil](https://ipsbrasil.org.br/pt/explore/dados);
* **Taxa de mortes evitáveis por 100 mil habitantes ajustada por idade** ([tabela 4](https://github.com/apublica/royalties/blob/main/data/tabela04_tx_mort_evitaveis.csv)): dados do Sistema de Informações sobre Mortalidade (SIM) e da OMS, organizados pelo [IEPS Data](https://iepsdata.org.br/data-downloads);
* **Acesso adequado à água e esgoto** ([tabela 5](https://github.com/apublica/royalties/blob/main/data/tabela05_agua_saneam.csv)): informações de 2022 do SNIS, tratadas pelo [Instituto Água e Saneamento (IAS)](https://www.aguaesaneamento.org.br/municipios-e-saneamento/);
* **Taxa de analfabetismo da população** ([tabela 6](https://github.com/apublica/royalties/blob/main/data/tabela06_alfabetizacao.csv)): dados do [Censo 2022](https://sidra.ibge.gov.br/Tabela/7240) (IBGE);
* **Desempenho educacional** ([tabelas 7](https://github.com/apublica/royalties/blob/main/data/tabela07_ideb_iniciais_2023.csv) e [8](https://github.com/apublica/royalties/blob/main/data/tabela08_ideb_finais_2023.csv)): notas do Ideb 2023 (anos iniciais e finais do ensino fundamental em escolas municipais), organizadas pela [FGV Municípios](https://municipios.fgv.br/indicadores);
* **Estoque de empregos formais** ([tabela 9](https://github.com/apublica/royalties/blob/main/data/tabela09_estoq_empregos_formais.csv)): dados do [Caged](https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas-trabalho) (fevereiro de 2025), proporcional à população estimada de 2024;
* **População inscrita no CadÚnico e em situação de pobreza** ([tabela 10](https://github.com/apublica/royalties/blob/main/data/tabela10_cadunico_pobreza.csv))**: [dados](https://dados.gov.br/dados/conjuntos-dados/pessoas-inscritas-no-cadastro-unico) de março de 2025, comparados à população estimada (IBGE 2024).

Também foram avaliadas variáveis fiscais e administrativas dos municípios, com base nos seguintes dados: 
* **Gastos municipais com educação (por matrícula), saúde, administração pública e infraestrutura social (per capita)** ([tabela 11](https://github.com/apublica/royalties/blob/main/data/tabela11_gastos.csv)): informações de 2023 do [Finbra](https://siconfi.tesouro.gov.br/siconfi/pages/public/consulta_finbra/finbra_list.jsf), tratadas pela FGV Municípios. Os gastos por matrícula consideram o número de alunos da rede municipal, segundo a Sinopse do [Censo Escolar da Educação Básica de 2023](https://www.gov.br/inep/pt-br/assuntos/noticias/censo-escolar/mec-e-inep-divulgam-resultados-do-censo-escolar-2023);
* **Número de servidores da administração municipal por 1.000 habitantes** ([tabela 12](https://github.com/apublica/royalties/blob/main/data/tabela12_rh.csv)): dados da [Pesquisa de Informações Básicas Municipais](https://www.ibge.gov.br/estatisticas/sociais/educacao/10586-pesquisa-de-informacoes-basicas-municipais.html) (IBGE/2023), trabalhados pela FGV Municípios.

## Ranqueamento
Cada município foi ranqueado dentro de seu respectivo estado em cada um dos indicadores, sendo classificados em três grupos de desempenho: terço superior (melhores resultados), terço intermediário e terço inferior (piores resultados). [Veja o resultado]().

| Código | Nome do Indicador | Tipo de Dado | Unidade | Descrição |
| ------------------------------------------- | --------------------------------------------------- | -------------- | ------------------- | ----------------------------------------------------------------------------- |
| cód | Código do município | Texto/Numérico | - | Código IBGE ou identificador único do município |
| total royalties (1999-2024) | Total de royalties recebidos (1999 a 2024) | Numérico | R\$ | Valor acumulado de royalties recebidos pelo município no período |
| população (est 2024) | População estimada para 2024 | Numérico | Habitantes | Estimativa populacional IBGE ou fonte oficial |
| população censo 2022 | População do Censo 2022 | Numérico | Habitantes | População residente registrada no Censo Demográfico de 2022 |
| \$ per capita | Receita per capita de royalties | Numérico | R\$ | Valor de royalties dividido pela população estimada |
| categoria | Categoria do município | Texto | - | Classificação usada na análise (ex: Alto, Médio, Baixo, etc.) |
| top15 | Pertence ao Top 15 em royalties | Booleano | Sim/Não | Indica se o município está entre os 15 com maior valor de royalties |
| ób\_ev\_total\_100mil\_hab\_2023 | Óbitos evitáveis por 100 mil hab (2023) | Numérico | óbitos/100 mil hab  | Taxa de mortalidade por causas evitáveis|
| pop sem água (2021) | População sem acesso à água (2021) | Numérico | Habitantes | Número absoluto de pessoas sem acesso a água potável segundo dados de 2021 |
| pop sem esgoto (2021) | População sem acesso a esgotamento sanitário | Numérico | Habitantes | Número de pessoas sem acesso a esgoto |
| taxa de analfabetismo (censo 22) | Taxa de analfabetismo (2022) | Numérico (%) | % | Percentual da população com 15 anos ou mais que não sabe ler e escrever |
| ideb iniciais municipal 2023 | IDEB anos iniciais do fundamental (2023) | Numérico | Nota (0 a 10) | Índice de Desenvolvimento da Educação Básica – anos iniciais |
| ideb finais municipal 2023 | IDEB anos finais do fundamental (2023) | Numérico | Nota (0 a 10) | Índice de Desenvolvimento da Educação Básica – anos finais |
| total cadunico (mar25)/pop IBGE 2024 | Cobertura do CadÚnico | Numérico (%) | % | Percentual da população estimada 2024 registrada no Cadastro Único (março/25) |
| pobreza cadunico (mar25)/pop IBGE 2024 | População em pobreza extrema ou pobreza no CadÚnico | Numérico (%) | % | Proporção da população em situação de pobreza cadastrada |
| médicos p/1000 hab (datasus dez/24) | Médicos por mil habitantes | Numérico | médicos/1000 hab | Densidade médica por população, dados de dezembro/2024 |
| gastos c/ educação p/ matrícula (2023) | Gastos com educação por aluno | Numérico | R\$ | Valor médio gasto por matrícula na educação básica municipal |
| gastos c/ saúde per capita (2023) | Gastos per capita com saúde | Numérico | R\$ | Despesa pública municipal com saúde por habitante |
| gastos c/ adm per capita (2023) | Gastos administrativos per capita | Numérico | R\$ | Despesas administrativas divididas pela população |
| gastos c/ infra social per capita (2023) | Gastos com infraestrutura social per capita | Numérico | R\$ | Inclui habitação, saneamento, urbanismo, etc. por habitante |
| pessoal p/ 1000 hab (pop DOU 2023/Censo 22) | Servidores públicos por 1000 hab | Numérico | servidores/1000 hab | Relação entre número de servidores municipais e população |
| % sem vínculo permanente (2023) | Proporção de servidores sem vínculo permanente | Numérico (%) | % | Percentual de funcionários com vínculos temporários/precarizados |



## Resumo de dados
Com base nos rankings estaduais, foi criado um índice-resumo padronizado que orientou a construção do SuperTrunfo dos royalties — uma ferramenta visual para comparação do desempenho dos municípios em diferentes dimensões. Cada indicador foi convertido para uma escala de 0 a 10, de acordo com a posição do município no ranking estadual: quanto mais próximo da nota 10, melhor o desempenho estadualmente, enquanto a proximidade com a nota 0 corresponde aos piores resultados.

Os indicadores foram organizados em três grandes eixos temáticos:
* **Educação**: inclui o Ideb dos anos iniciais e finais do ensino fundamental em escolas municipais, a taxa de analfabetismo.
* **Saúde e saneamento**: reúne os dados de mortalidade infantil, taxa de mortes evitáveis ajustada por idade e acesso adequado à água e ao esgoto.
* **Emprego e renda**: considera o estoque de empregos formais em relação à população, a proporção de moradores cadastrados no CadÚnico e o percentual da população em situação de pobreza.

Para cada grupo temático, foi calculada a média simples das notas dos indicadores que o compõem, resultando em três notas parciais. [Veja o resultado]().

