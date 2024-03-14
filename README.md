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

