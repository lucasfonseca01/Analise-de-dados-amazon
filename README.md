# Analise de dados-amazon
 ## Análise de dados da amazon foi feita em SQL
 ### Objetivo
 O objetivo deste projeto de análise de dados é obter insights sobre os livros disponíveis na Amazon em diferentes gêneros e subgêneros. Ao analisar os conjuntos de dados fornecidos, pretendemos compreender a popularidade dos gêneros, subgêneros, estratégias de preços e preferências dos usuários em relação aos formatos e classificações dos livros.

 ### Coleta e extração de dados
 Dados foram coletado do kaggle e carregados via linha de comando no SGBD Mysql. 
 URL Amazon Books Dataset: Genre, Sub-genre, and Books : https://www.kaggle.com/datasets/chhavidhankhar11/amazon-books-dataset

 ### Aplicação das Técnicas de análise
 Para responder às perguntas de negócio, foram utilizadas junção de tabelas, CTE, agregação de dados, técnicas de limpeza e processamento, bem como funções como média, soma, contar etc.

 ### Entrega dos resultados - Conclusão
 Com a análise de dados, foi possível perceber que os gêneros Children's Books, Romance e Sports são mais listados na Amazon. Já os subgêneros são Fantasy, Biology & Life Sciences e Education & Reference.

Não existe uma correlação entre gêneros e subgêneros mais listados com a média de avaliação fornecida pelos usuários. Porém, os gêneros mais listados são aqueles que têm maior número de subgêneros.

A média de preço sobre gênero e subgênero também não reflete os mais listados de ambos. Em gênero, os três com médias mais caras foram: Medicine & Health Sciences, Computing, Internet & Digital Media e Science & Mathematics. Já os mais baratos foram: Crime, Thriller & Mystery, Children's Books e Literature & Fiction. Em subgênero, os com média maior foram: Test Preparation & Review, Research e Administration & Policy, e os mais baratos: Interactive & Activity Books, Crafts, Hobbies & Practical Interests e Short Stories.

Com as avaliações fornecidas pelos usuários com notas, foi possível notar que os gêneros melhor classificados foram os Biographies, Diaries & True Accounts, Children's Books e Comics & Mangas. Os subgêneros melhor classificados pelos usuários foram: Hurling, Computers & Technology e Fantasy, Science Fiction & Horror. Não existe nenhuma correlação entre o preço do livro e sua classificação com notas do usuário. Na Amazon, os tipos de produtos com média de valor mais alto são Game, Puzzle e Sheet music.

Os principais autores e editoras que mais postam livros na Amazon são: Wonder House Books, Maple Press, Jeff Kinney e J.K. Rowling. Porém, os autores e editoras com o maior número de avaliações em subgêneros no top 1, 2 e 3 é composto pela dobradinha de J.K. Rowling, onde os três subgêneros são divididos entre Fantasy, Fantasy, Horror & Science Fiction e Fantasy, Science Fiction & Horror.

 ### Ações
1: Dada a diversidade de preferências dos clientes identificada na análise, é recomendável adotar uma abordagem de segmentação de mercado mais refinada. Isso pode envolver o direcionamento de campanhas de marketing específicas para diferentes grupos demográficos ou interesses de leitura, personalizando a experiência do cliente e aumentando a relevância das ofertas da empresa.

2: Considerando os gêneros e subgêneros mais listados na Amazon, recomenda-se diversificar o estoque da empresa para incluir uma ampla variedade de produtos nessas categorias populares. Isso pode aumentar a atratividade da empresa para os clientes e impulsionar as vendas.

3: Para aumentar a fidelidade e a satisfação do cliente, pode-se incluir recomendações personalizadas com base nas preferências dos clientes e fornecendo um serviço de atendimento ao cliente excepcional.

4: Constantemente realizar avaliação cuidadosa da estratégia de precificação, isso pode envolver a introdução de opções de preço mais acessíveis, promoções especiais ou programas de fidelidade para garantir que os produtos estejam acessíveis a uma ampla gama de clientes.

5: Buscar estabelecer parcerias estratégicas com autores e editoras de destaque, como por exemplo Jeff Kinney e J.K. Rowling, pode fortalecer a oferta de produtos exclusivos e atrair um público mais amplo. Essas parcerias podem incluir colaborações para lançamentos exclusivos, eventos de autógrafos ou promoções conjuntas.