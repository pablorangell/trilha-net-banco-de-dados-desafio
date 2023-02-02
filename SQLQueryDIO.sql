SELECT * FROM Atores

SELECT * FROM ElencoFilme

SELECT * FROM Filmes

SELECT * FROM FilmesGenero

SELECT * FROM Generos

--01
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes

--02
SELECT 
	Nome,
	Ano,
	Duracao 
FROM Filmes
ORDER BY Ano

--03
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--04
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

--05
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

--06
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--07
SELECT 
	Ano,
	COUNT(*) Quantidade 
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

--08
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--09
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
	Nome,
	Genero
FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = FilmesGenero.IdFilme AND FilmesGenero.IdGenero = Generos.Id

--10 Inner Join
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT
	Nome,
	Genero
FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = FilmesGenero.IdFilme AND FilmesGenero.IdGenero = Generos.Id AND Genero = 'Mistério'

--11 Inner Join
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes, ElencoFilme, Atores
WHERE Filmes.Id = ElencoFilme.IdFilme AND ElencoFilme.IdAtor = Atores.Id 

--12 Inner Join
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id