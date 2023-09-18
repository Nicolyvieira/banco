USE bdLivraria

--a) O total de livros que come�am com a letra P
SELECT COUNT (codLivro) AS ' O total de Livros que come�am com a letra P' 
FROM tbLivro
WHERE nomeLivro LIKE 'p%'

--b) O maior n�mero de p�ginas entre todos os livros
SELECT MAX (numPaginas) AS ' O maior numero de paginas entre todos os livros '
FROM tbLivro

--c) O menor n�mero de p�ginas entre todos os livros
SELECT MIN (numPaginas) AS ' O menor numero de paginas entre todos os livros'
FROM tbLivro

--d) A m�dia de p�ginas entre todos os livros
SELECT AVG (numPaginas) AS ' A media de paginas entre todos os livros '
FROM tbLivro

--e) A soma do n�mero de p�ginas dos livros de editorac�digo01
SELECT SUM (numPaginas) AS ' A soma do numero de paginas do livro da editora codigo 01 '
FROM tbLivro
WHERE codEditora = 01

--f) A soma dos n�meros de p�ginas dos livros que come�am com a letra A
SELECT SUM (numPaginas) AS ' A soma dos  numeros de paginas dos livros que come�am coma a letra A '
FROM tbLivro
WHERE nomeLivro LIKE 'A%'

--g) A m�dia dos n�meros de p�ginas dos livros que sejam do autor c�digo 03
SELECT AVG (numPaginas) AS ' A media dos  numeros de paginas dos livros do autor que sejam do codigo 03 '
FROM tbLivro
WHERE codAutor = 03

--h) A quantidade de livros da editora de c�digo 04
SELECT COUNT (codLivro) AS ' A quantidade de livros da editora do codigo 04'
FROM tbLivro
WHERE codEditora = 04

--i) A m�dia do n�mero de p�ginas dos livros que tenham a palavra �estrela� em seu nome
SELECT AVG (numPaginas)  AS 'A media do numero de paginas dos livros que tenham a palavra "estrela" em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%estrela%'

--j) A quantidade de livros que tenham a palavra �poema� em seunome
SELECT COUNT (codLivro) AS ' A quantidade de livros que tenham a palavra "poema" em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%poema%'

--k) A quantidade de livros agrupado pelo nome do g�nero
SELECT COUNT (codLivro) AS ' A quantidade de livros do genero Romance '
FROM tbLivro
WHERE codGenero = 1

--l) A soma das p�ginas agrupada pelo nome doautor
SELECT AVG (numPaginas) AS ' A m�dia do n�mero de p�ginas do livro dos livros que tenham a letra A em seu nome '
FROM tbLivro
WHERE nomeLivro LIKE '%A%'

--m) A m�dia de p�ginas agrupada pelo nome do autorem ordem alfab�tica (de A a Z)
SELECT nomeLivro AS ' Todos os livros em ordem alfab�tica '
FROM tbLivro
ORDER BY nomeLivro

--n) A quantidade de livros agrupada pelo nome da editora em ordem alfab�tica inversa (de Z a A)
SELECT COUNT (nomeEditora) AS ' Todas as Editoras em ordem alfab�tica inversa'
FROM tbEditora
WHERE nomeEditora LIKE 
ORDER BY nomeEditora DESC 


--o) A  soma  de  p�ginas doslivrosagrupados  pelo  nome  doautor  que  sejam  de  autores  cujo nome comece com a letra �C�
--p) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja �Machado de Assis� ou �Cora Coralina�ou �Graciliano Ramos� ou �Clarice Lispector�
--q)  A  soma  das  p�ginas  dos  livros  agrupadas  pelo  nome  da  editora  cujo  n�mero  de  p�ginas esteja entre 200 e 500 (inclusive)
--r) O nome dos livros ao lado do nome das editoras e do nome dos autores
--s)  O  nome  dos  livros  ao  lado  do  nome  do  autor  somente  daqueles  cujo  nome  da  editora  for �Cia das Letras�
--t)  O  nome  dos  livros  ao  lado  dos  nomes  dos  autores,  somente  dos  livros  que  n�o  forem  do autor ��rico Ver�ssimo�
--u) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados
--v)  Os  nomes  dos  autores  ao  lado  dos  nomes  dos  livros,  inclusive  daqueles  que  n�o  tem autores cadastrados
--w)  O  nome  dos  autores  ao  lado  dos  nomes  dos  livros,  indiferente  do  autor  ter  ou  n�o  livro publicado, e indiferente do livro pertencer a algum autor
--x) A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica.
--y) Somente os nomes dos autores que n�o tem livros cadastrados
--z) Os nomes dos g�neros que n�o possuem nenhum livro cadastrado
