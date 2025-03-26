SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE ProjetoFilmes;

USE projetoFilmes;

CREATE TABLE Filmes(
	Id int primary key auto_increment,
    Nome varchar(50),
    Diretor varchar(50),
    Gênero varchar(50),
    Ano int
);

CREATE TABLE Avaliacao(
	id int primary key auto_increment,
    ID_Filme int,
    Nota decimal(3,1),
    Comentário varchar(100),
    Recomendacao varchar(3),
    foreign key(ID_Filme) references Filmes(id)
);

Select * from Filmes;
Select * from Avaliacao;

Select
	filmes.Nome,
    Avaliacao.Nota,
    Avaliacao.Comentário,
    Avaliacao.Recomendacao as 'Recomendado?'
FROM filmes
INNER JOIN Avaliacao ON filmes.id = avaliacao.ID_Filme;

