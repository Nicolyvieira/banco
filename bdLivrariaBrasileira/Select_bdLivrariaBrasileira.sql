USE bdLivrariaBrasileira

--a
SELECT COUNT (codLivro) AS ' O total de Livros que começam com a letra P' 
FROM tbLivro
WHERE nomeLivro LIKE 'p%'

--b
SELECT MAX (numPaginas) AS ' O maior numero de paginas de todos os livros '
FROM tbLivro

--c
SELECT MIN (numPaginas) AS ' O menor numero de paginas '
FROM tbLivro

--d
SELECT AVG (numPaginas) AS ' A media de paginas entre todos os livros '
FROM tbLivro

--e
SELECT SUM (numPaginas) AS ' A soma do numero de paginas do livro da editora codigo 01 '
FROM tbLivro
WHERE codEditora = 01

--f
SELECT SUM (numPaginas) AS ' A soma dos  numeros de paginas dos livros que começam coma a letra A '
FROM tbLivro
WHERE nomeLivro LIKE 'A%'


--g
SELECT AVG (numPaginas) AS ' A media dos  numeros de paginas dos livros do autor que sejam do codigo 03 '
FROM tbLivro
WHERE codAutor = 03

--h
SELECT COUNT (codLivro) AS ' A quantidade de livros da editora do codigo 04'
FROM tbLivro
WHERE codEditora = 04

--i
SELECT AVG (numPaginas)  AS 'A media do numero de paginas dos livros que tenham a palavra "estrela" em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%estrela%'

--j
SELECT COUNT (codLivro) AS ' A quantidade de livros que tenham a palavra "poema" em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%poema%'

--K
SELECT COUNT (codLivro) AS ' A quantidade de livros do genero Romance '
FROM tbLivro
WHERE codGenero = 1

--l
SELECT AVG (numPaginas) AS ' A média do número de páginas do livro dos livros que tenham a letra A em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%A%'

--m
SELECT nomeLivro AS ' Todos os livros em ordem alfabética '
FROM tbLivro
ORDER BY nomeLivro