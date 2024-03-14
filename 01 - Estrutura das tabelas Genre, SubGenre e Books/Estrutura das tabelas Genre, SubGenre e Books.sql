# Comando cria o SCHEMA para análise de dados da Amazon
CREATE SCHEMA portfolio_analise_de_dados_amazon;
USE portfolio_analise_de_dados_amazon;

# Criação da tabela Genre
# Criação das variáveis
# Adicionando o índice na coluna Title
CREATE TABLE Genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    NumSubgenres INT,
    URL VARCHAR(255),
    INDEX title_index (Title)
);

# Criação da tabela SubGenre
# Criação das variáveis
# Adicionando o índice na coluna Title
# A linha FOREIGN KEY abaixo define a chave estrangeira MainGenre referenciando a tabela Genre pelo campo Title
CREATE TABLE SubGenre (
    SubGenreID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    MainGenre VARCHAR(255),
    NumBooks INT,
    URL VARCHAR(255),
    INDEX title_index (Title),
    FOREIGN KEY (MainGenre) REFERENCES Genre(Title)
);

# Criação da tabela Books
# Criação das variáveis
# Adicionando o índice na coluna MainGenre
# Adicionando o índice na coluna SubGenre
# A linha FOREIGN KEY abaixo define a chave estrangeira MainGenre referenciando a tabela Genre pelo campo Title
# A linha FOREIGN KEY abaixo define a chave estrangeira SubGenre referenciando a tabela Genre pelo campo Title
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    MainGenre VARCHAR(255),
    SubGenre VARCHAR(255),
    Type VARCHAR(50),
    Price VARCHAR(50),
    Rating DECIMAL(3, 2),
    NumPeopleRated FLOAT,
    URL VARCHAR(255),
    INDEX main_genre_index (MainGenre),
    INDEX sub_genre_index (SubGenre),
    FOREIGN KEY (MainGenre) REFERENCES Genre(Title),
    FOREIGN KEY (SubGenre) REFERENCES SubGenre(Title)
);