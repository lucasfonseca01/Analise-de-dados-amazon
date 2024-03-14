# Quais gêneros e subgêneros têm o maior número de livros listados na Amazon?
# Genero
SELECT MainGenre, COUNT(*) AS Total_Top1_Genero
FROM portfolio_analise_de_dados_amazon.books
GROUP BY MainGenre
Order by Total_Top1_Genero desc
limit 3;
#SubGenero
SELECT SubGenre, COUNT(*) AS Total_Top1_SubGenero
FROM portfolio_analise_de_dados_amazon.books
GROUP BY SubGenre
Order by Total_Top1_SubGenero desc
limit 3;


#Como os gêneros e subgêneros se distribuem em termos de popularidade e diversidade?
WITH GenrePopularity AS (
    SELECT MainGenre, AVG(Rating) AS MediaRating, COUNT(*) AS Numero_de_livros_genero FROM Books
    GROUP BY MainGenre 
),
SubGenreDiversity AS (
    SELECT MainGenre, COUNT(DISTINCT Title) AS Numero_de_livros_subgenero FROM SubGenre
    GROUP BY MainGenre
)
SELECT G.MainGenre, G.MediaRating, G.Numero_de_livros_genero,
		COALESCE(S.Numero_de_livros_subgenero, 0) AS Numero_de_livros_subgenero FROM GenrePopularity AS G
        LEFT JOIN SubGenreDiversity AS S ON G.MainGenre = S.MainGenre;
        
        
# Qual é a distribuição média de preços entre diferentes gêneros e subgêneros?
SELECT MainGenre as Genero, ROUND(AVG(Price),2) as Media_Genero FROM Books
GROUP BY Genero
ORDER BY Media_Genero DESC;

SELECT SubGenre as Sub_Genero, ROUND(AVG(Price),2) as Media_SubGenero FROM Books
GROUP BY Sub_Genero
ORDER BY Media_SubGenero DESC;

# Certos tipos de livros (PaperBack, Kindle, audiolivro, capa dura) 
# tendem a ter preços mais altos do que outros dentro do mesmo gênero?
SELECT Type as Tipo, ROUND(AVG(price),2) AS Media_de_tipo from books
GROUP BY Tipo
ORDER BY Media_de_tipo DESC;

# Quais gêneros e subgêneros recebem as classificações médias mais altas dos usuários?
SELECT MainGenre as Genero, ROUND(AVG(Rating),2) as Classificacao from books
GROUP BY Genero 
ORDER BY Classificacao DESC;

SELECT SubGenre as SubGenero, ROUND(AVG(Rating),2) as Classificacao from books
GROUP BY SubGenre 
ORDER BY Classificacao DESC;

#  Existe alguma correlação entre o preço de um livro e sua classificação?
SELECT Price, Rating as Classificacao, COUNT(*) AS Quantidade_de_livros_no_preco from books
GROUP BY Price, Classificacao
ORDER BY Quantidade_de_livros_no_preco DESC;

#Quais são os principais autores ou editoras com mais livros listados em diferentes gêneros e subgêneros?
SELECT Author AS Author_Editora, MainGenre AS Genero, COUNT(*) AS Numero_de_livros from books
GROUP BY Author_Editora, Genero
ORDER BY Numero_de_livros desc;

SELECT Author AS Author_Editora, SubGenre AS SubGenero, COUNT(*) AS Numero_de_livros from books
GROUP BY Author_Editora,SubGenero
ORDER BY Numero_de_livros desc;

#Quais são os autores com maior número de avaliação e seus subgenero
SELECT Author, SUM(NumPeopleRated) AS Soma_de_avaliacao_do_author_por_subgenero, SubGenre FROM books
GROUP BY Author, SubGenre
ORDER BY Soma_de_avaliacao_do_author_por_subgenero DESC;