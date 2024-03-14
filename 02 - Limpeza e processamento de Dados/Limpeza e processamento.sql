							#Limpeza de dados
	# Tratamento de valores ausentes
    # Detecção e filtragem de outliers
	# Detenção e remoção de registros duplicados

# Tratamento de valores ausentes
	#Genre
# Verificando os valores únicos em title. 
SELECT DISTINCT Title FROM portfolio_analise_de_dados_amazon.genre;

# Conta se existe valor nulo em title
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.genre
WHERE Title is null;

# Verifica total de valores por title.
SELECT Title, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.genre
GROUP BY Title
Order by total desc;

# Verificando os valores únicos em NumSubGenres. 
SELECT DISTINCT NumSubgenres FROM portfolio_analise_de_dados_amazon.genre;

# Conta se existe valor nulo em NumSubGenres.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.genre
WHERE NumSubgenres is null;

# Verifica total de valores por NumSubGenres.
SELECT NumSubgenres, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.genre
GROUP BY NumSubgenres
Order by total desc;

# Verificando os valores únicos em URL. 
SELECT DISTINCT URL FROM portfolio_analise_de_dados_amazon.genre;

# Conta se existe valor nulo em URL.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.genre
WHERE URL is null;

# Verifica total de valores por URL.
SELECT URL, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.genre
GROUP BY URL
Order by total desc;

# Registro Duplicados em GenreID
SELECT GenreID,NumSubgenres
FROM portfolio_analise_de_dados_amazon.genre
WHERE GenreID in(SELECT GenreID from portfolio_analise_de_dados_amazon.genre group by GenreID having COUNT(*) > 1)
Order by GenreID desc;

# Registro Duplicados em URL
SELECT URL,Title, count(*) as numero
FROM portfolio_analise_de_dados_amazon.genre
group by URL, Title
having numero >1;

# Detecção e filtragem de outliers
	#Não foi preciso fazer detecção de valores outlier, pois o único campo numérico em gender é para indicar a contagem de subgêneros associados a cada gênero principal.


# Tratamento de valores ausentes
	#Subgenre
    
# Verificando os valores únicos em Title. 
SELECT DISTINCT Title FROM portfolio_analise_de_dados_amazon.subgenre;

# Conta se existe valor nulo em Title.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.subgenre
WHERE Title is null;

# Verifica total de valores por Title.
SELECT Title, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.subgenre
GROUP BY Title
Order by total desc;

# Verificando os valores únicos em MainGenre. 
SELECT DISTINCT MainGenre FROM portfolio_analise_de_dados_amazon.subgenre;

# Conta se existe valor nulo em MainGenre.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.subgenre
WHERE MainGenre is null;

# Verifica total de valores por MainGenre.
SELECT MainGenre, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.subgenre
GROUP BY MainGenre
Order by total desc;

# Verificando os valores únicos em URL. 
SELECT DISTINCT URL FROM portfolio_analise_de_dados_amazon.subgenre;

# Conta se existe valor nulo em URL.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.subgenre
WHERE URL is null;

# Verifica total de valores por URL.
SELECT URL, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.subgenre
GROUP BY URL
Order by total desc;

# Registro Duplicados SubGenreID
SELECT SubGenreID,Title
FROM portfolio_analise_de_dados_amazon.subgenre
WHERE SubGenreID in(SELECT SubGenreID from portfolio_analise_de_dados_amazon.subgenre group by SubGenreID having COUNT(*) > 1)
Order by SubGenreID desc;

# Registro Duplicados em URL
SELECT URL,Title, count(*) as numero
FROM portfolio_analise_de_dados_amazon.subgenre
group by URL, Title
having numero >1;

# Deletando registro duplicados de link em subgenre
DELETE FROM portfolio_analise_de_dados_amazon.subgenre
WHERE URL IN (
    SELECT URL
    FROM (
        SELECT URL, COUNT(*)
        FROM portfolio_analise_de_dados_amazon.subgenre
        GROUP BY URL
        HAVING COUNT(*) > 1
    ) AS duplicate_urls
);

# Tratamento de valores ausentes
	#Books
# Verificando os valores únicos em Title. 
SELECT DISTINCT Title FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em Title.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE Title is null OR Title = "?" OR Title = "NA" OR Title = "NAN" OR Title = "NaN" OR Title = "unknown";

# Verifica total de valores por Title.
SELECT Title, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY Title
Order by total desc;

# Verificando os valores únicos em Author. 
SELECT DISTINCT Author FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em Author.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE Author is null OR Author = "?" OR Author = "NA" OR Author = "NAN" OR Author = "NaN" OR Author = "N/A" OR Author = "unknown" OR Author = "none";

# Verifica total de valores por Author.
SELECT Author, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY Author
Order by total desc;

#Atualizando os valores ausentes para OTHER
SET SQL_SAFE_UPDATES = 0;
UPDATE portfolio_analise_de_dados_amazon.books SET Author = 'OTHER'
WHERE Author is null OR Author = "?" OR Author = "NA" OR Author = "NAN" OR Author = "NaN" OR Author = "N/A" OR Author = "unknown" OR Author = "none";
SET SQL_SAFE_UPDATES = 1;

# Verificando os valores únicos em MainGenre. 
SELECT DISTINCT MainGenre FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em MainGenre.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE MainGenre is null OR MainGenre = "?" OR MainGenre = "NA" OR MainGenre = "NAN" OR MainGenre = "NaN" OR MainGenre = "unknown";

# Verifica total de valores por MainGenre.
SELECT MainGenre, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY MainGenre
Order by total desc;

# Verificando os valores únicos em SubGenre. 
SELECT DISTINCT SubGenre FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em SubGenre.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE SubGenre is null OR SubGenre = "?" OR SubGenre = "NA" OR SubGenre = "NAN" OR SubGenre = "NaN" OR SubGenre = "unknown";

# Verifica total de valores por SubGenre.
SELECT SubGenre, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY SubGenre
Order by total desc;

# Verificando os valores únicos em Type. 
SELECT DISTINCT Type FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em Type.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE Type is null OR Type = "?" OR Type = "NA" OR Type = "NAN" OR Type = "NaN" OR Type = "unknown";

# Verifica total de valores por Type.
SELECT Type, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY Type
Order by total desc;

# Verificando os valores únicos em PRICE.
SELECT BookID, price FROM portfolio_analise_de_dados_amazon.books WHERE price LIKE '₹%' ORDER BY BookID asc;
SELECT BookID, price FROM portfolio_analise_de_dados_amazon.books WHERE price LIKE '%₹' ORDER BY BookID asc;

# Removendo o simbolo ₹ para converter de texto para númerico.
SELECT REPLACE(price, '₹','')FROM portfolio_analise_de_dados_amazon.books;
SET SQL_SAFE_UPDATES = 0;
UPDATE portfolio_analise_de_dados_amazon.books SET Price = REPLACE(price, '₹','')
WHERE Price LIKE '₹%';
SET SQL_SAFE_UPDATES = 1;

# Tirando as virgulas para transformar price de warchar para decial
UPDATE portfolio_analise_de_dados_amazon.books
SET price = REPLACE(price, ',', '');

# Transformando coluna price em decimal
ALTER TABLE portfolio_analise_de_dados_amazon.books
MODIFY price DECIMAL(10,2);

# Verificando os valores únicos em price. 
SELECT DISTINCT price FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em price.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE price is null OR Type = "?" OR Type = "NA" OR Type = "NAN" OR Type = "NaN" OR Type = "unknown";

# Verifica total de valores por price.
SELECT price, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY price
Order by total desc;

# Verificando os valores únicos em Rating. 
SELECT DISTINCT Rating FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em Rating.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE Rating is null;

# Verifica total de valores por Rating.
SELECT Rating, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY Rating
Order by total desc;

# Verificando os valores únicos em NumPeopleRated. 
SELECT DISTINCT NumPeopleRated FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em NumPeopleRated.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE NumPeopleRated is null;

# Verifica total de valores por NumPeopleRated.
SELECT NumPeopleRated, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY NumPeopleRated
Order by total desc;

# Verificando os valores únicos em URL. 
SELECT DISTINCT URL FROM portfolio_analise_de_dados_amazon.books;

# Conta se existe valor nulo em URL.
SELECT COUNT(*) 
FROM portfolio_analise_de_dados_amazon.books
WHERE URL is null;

# Verifica total de valores por URL.
SELECT URL, COUNT(*) AS total
FROM portfolio_analise_de_dados_amazon.books
GROUP BY URL
Order by total desc;

# Registro Duplicados em Title
SELECT URL,Title, count(*) as numero
FROM portfolio_analise_de_dados_amazon.books
group by URL, Title
having numero >1;

# Deletando registro duplicados de link em books
DELETE FROM portfolio_analise_de_dados_amazon.books
WHERE URL IN (
    SELECT URL
    FROM (
        SELECT URL, COUNT(*)
        FROM portfolio_analise_de_dados_amazon.books
        GROUP BY URL
        HAVING COUNT(*) > 1
    ) AS duplicate_urls
);