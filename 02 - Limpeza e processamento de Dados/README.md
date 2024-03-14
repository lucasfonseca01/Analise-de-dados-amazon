## Gênero

Na tabela Gênero contém a coluna GêneroID, Título, NumSubgêneros e URL. Como as colunas já foram bem específicas e contém poucos registros, no processo de aplicação das técnicas só foi preciso aplicar verificação de duplicidade e tratamento de valores ausentes. A tabela Gênero não apresentou nenhum problema.

## Subgênero

Possui colunas SubGêneroID, Título, MainGênero, NumLivros e URL. Os dados e os tipos de dados, eles foram corrigidos na criação do banco de dados e apesar de poucas colunas, o único problema apresentado foi duplicidade na URL, o qual foi corrigido.

## Livros

Não houve títulos com valores ausentes, mas, existem títulos com o mesmo nome, porém, links diferentes por motivo de serem volumes do mesmo livro diferentes. Colunas MainGênero, SubGênero, Tipo, Avaliação, não houve valores ausentes. Valores ausentes encontrados em autor foram todos modificados para "OTHER".

Coluna preço não tem os valores ausentes e foi notado que era um campo texto composto pelo símbolo da moeda "₹" e o valor, por exemplo: ₹99.00. Então, o primeiro passo foi remover o símbolo da moeda para converter em um tipo numérico.

Na coluna URL não foi identificado valores ausentes, porém havia problemas de duplicidades de URL para o mesmo livro várias vezes. A duplicidade foi resolvida.