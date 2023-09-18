USE bdLivraria

INSERT tbAutor(nomeAutor)
VALUES   ('Chico Buarque')
	   , ('Jorge Amado')
	   , ('J.K Rowling')
	   , ('William Shakespeare')
	   , ('Monteiro Lobato')
SELECT * FROM tbAutor

INSERT tbEditora(nomeEditora)
VALUES  ('Melhoramentos')
	  , ('Globo')
	  , ('�tica')
	  , ('Companhia da Letras')
	  , ('Abril')
SELECT * FROM tbEditora

INSERT tbGenero(nomeGenero)
VALUES  ('Romance')
	  , ('Trag�dia')
	  , ('Fic��o')
SELECT * FROM tbGenero

INSERT tbLivro(nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES ('Budapeste', 176, 2, 4, 1)
	 , ('O Bicho-da-Seda', 454, 2, 5, 3)
	 , ('Gabriela, Cravo e Canela', 214, 1, 2, 2)
	 , ('Reina��es de Narizinho', 143, 2, 2, 5)
	 , ('Romeu e Julieta', 421, 1, 3, 4)
	 , ('O Irm�o Alem�o', 478, 1, 4, 1)
	 , ('Terras do Sem-Fim', 125, 1, 3, 2)
	 , ('Animais Fantasticos e Onde Habitam', 267, 2, 4, 3)

SELECT * FROM tbLivro
SELECT * FROM tbEditora