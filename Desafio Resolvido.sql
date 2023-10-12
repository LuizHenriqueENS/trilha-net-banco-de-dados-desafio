-- Desafio 1
SELECT 
	Nome,
	Ano 
FROM Filmes

-- Desafio 2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- Desafio 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Desafio 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- Desafio 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

-- Desafio 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Desafio 7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Desafio 8
SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- Desafio 9
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Desafio 10
SELECT
	Nome,
	Genero
FROM Filmes 
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- Desafio 11
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Nome = 'De Olhos Bem Fechados' 
	OR Nome = 'A Viagem de Chihiro'
	OR Nome = 'Um Corpo que Cai'
	AND Genero = 'Mistério'

-- Desafio 12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor