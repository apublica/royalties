# Metodologia
A reportagem analisou o impacto da arrecadação de royalties e participações especiais (PEs) do petróleo sobre indicadores socioeconômicos de municípios de seis estados: Rio de Janeiro, São Paulo, Espírito Santo, Bahia, Rio Grande do Norte e Amazonas.

## Fonte dos dados e padronização
Os dados de royalties e PEs foram extraídos da plataforma [InfoRoyalties](https://inforoyalties.ucam-campos.br/), desenvolvida pela Universidade Candido Mendes (UCAM). Os valores, referentes ao período entre 1999 e 2024, foram corrigidos pela inflação acumulada no período, com base em índices oficiais. O código pode ser consultado aqui.

A partir do total arrecadado por cada município no período, foi calculado o valor per capita com base na [população estimada](https://www.ibge.gov.br/estatisticas/sociais/populacao/9103-estimativas-de-populacao.html) pelo IBGE em 2024. Os 15 municípios que mais receberam royalties e participações especiais por habitante foram selecionados para análise aprofundada — entre eles, 12 do Rio de Janeiro, 2 do Espírito Santo e 1 de São Paulo.
Para avaliar a aplicação dos recursos e o desempenho social desses municípios, foram analisados dez indicadores socioeconômicos, considerando sempre dados mais recentes disponíveis, preferencialmente de 2023 ou 2024. São eles:

* **Mortalidade infantil (0 a 4 anos)**: dados de 2023 do TabNet/Datasus, trabalhados pelo [IPS Brasil](https://ipsbrasil.org.br/pt/explore/dados);
* **Taxa de mortes evitáveis por 100 mil habitantes ajustada por idade**: dados do Sistema de Informações sobre Mortalidade (SIM) e da OMS, organizados pelo [IEPS Data](https://iepsdata.org.br/data-downloads);
* **Acesso adequado à água e esgoto**: informações de 2022 do SNIS, tratadas pelo [Instituto Água e Saneamento (IAS)](https://www.aguaesaneamento.org.br/municipios-e-saneamento/);
* **Taxa de analfabetismo da população**: dados do [Censo 2022](https://sidra.ibge.gov.br/Tabela/7240) (IBGE);
* **Desempenho educacional**: notas do Ideb 2023 (anos iniciais e finais do ensino fundamental em escolas municipais), organizadas pela [FGV Municípios](https://municipios.fgv.br/indicadores);
* **Estoque de empregos formais**: dados do [Caged](https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas-trabalho) (fevereiro de 2025), proporcional à população estimada de 2024;
* **População inscrita no CadÚnico e em situação de pobreza**: [dados](https://dados.gov.br/dados/conjuntos-dados/pessoas-inscritas-no-cadastro-unico) de março de 2025, comparados à população estimada (IBGE 2024).

Também foram avaliadas variáveis fiscais e administrativas dos municípios, com base nos seguintes dados: 
* **Gastos municipais com educação (por matrícula), saúde, administração pública e infraestrutura social (per capita)**: informações de 2023 do [Finbra](https://siconfi.tesouro.gov.br/siconfi/pages/public/consulta_finbra/finbra_list.jsf), tratadas pela FGV Municípios. Os gastos por matrícula consideram o número de alunos da rede municipal, segundo a Sinopse do [Censo Escolar da Educação Básica de 2023](https://www.gov.br/inep/pt-br/assuntos/noticias/censo-escolar/mec-e-inep-divulgam-resultados-do-censo-escolar-2023);
* **Número de servidores da administração municipal por 1.000 habitantes**: dados da [Pesquisa de Informações Básicas Municipais](https://www.ibge.gov.br/estatisticas/sociais/educacao/10586-pesquisa-de-informacoes-basicas-municipais.html) (IBGE/2023), trabalhados pela FGV Municípios.


## Ranqueamento
Cada município foi ranqueado dentro de seu respectivo estado em cada um dos indicadores, sendo classificados em três grupos de desempenho: terço superior (melhores resultados), terço intermediário e terço inferior (piores resultados). [Veja o resultado]().

## Resumo de dados
Com base nos rankings estaduais, foi criado um índice-resumo padronizado que orientou a construção do SuperTrunfo dos royalties — uma ferramenta visual para comparação do desempenho dos municípios em diferentes dimensões. Cada indicador foi convertido para uma escala de 0 a 10, de acordo com a posição do município no ranking estadual: quanto mais próximo da nota 10, melhor o desempenho estadualmente, enquanto a proximidade com a nota 0 corresponde aos piores resultados.

Os indicadores foram organizados em três grandes eixos temáticos:
* **Educação**: inclui o Ideb dos anos iniciais e finais do ensino fundamental em escolas municipais, a taxa de analfabetismo.
* **Saúde e saneamento**: reúne os dados de mortalidade infantil, taxa de mortes evitáveis ajustada por idade e acesso adequado à água e ao esgoto.
* **Emprego e renda**: considera o estoque de empregos formais em relação à população, a proporção de moradores cadastrados no CadÚnico e o percentual da população em situação de pobreza.

Para cada grupo temático, foi calculada a média simples das notas dos indicadores que o compõem, resultando em três notas parciais. [Veja o resultado]().

