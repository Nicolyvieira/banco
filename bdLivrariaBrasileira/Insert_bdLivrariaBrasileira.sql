USE bdLivrariaBrasileira

INSERT tbAutor(nomeAutor)
VALUES  ('Machado de Assis')
       , ('Cora Coralina')
	   , ('Graciliano Ramos')
	   , ('Clarice Lispector')
	   , ('Erico Verissimo')
SELECT * FROM tbAutor

INSERT tbEditora(nomeEditora)
VALUES ('Cia das Letras')
      , ('Ática')
	  , ('Saraiva')
SELECT * FROM tbEditora

INSERT tbGenero(nomeGenero)
VALUES ('Romance')
      , ('Poesia')
	  , ('Literatura Brasileira')
SELECT * FROM tbGenero

INSERT tbLivro(nomeLivro, numPaginas, codGenero, codAutor, codEditora)
VALUES ('A Mão e a Luva', 160, 1, 1, 2)
     , ('O Almada', 291, 2, 1, 1)
	 , ('Dom Casmurro', 210, 3, 1 , 3)
	 , ('Meu Livro de Cordel', 110, 2, 2, 1)
	 , ('Villa Boa de Goyaz', 112, 3, 2, 3)
	 , ('Estórias da Casa Velha da Ponte', 109, 1, 2, 2)
	 , ('Infancia', 256, 3, 3, 2)
	 , ('Vidas Secas', 164, 3, 3, 3)
	 , ('Angústia', 273, 1, 3, 1)
	 , ('A Paixão Segundo G.H', 456, 2, 4, 3)
	 , ('Laços de Familia', 138, 3, 4, 1)
	 , ('Perto do Coração Selvagem', 179, 2, 4, 2)
	 , ('Um Lugar ao Sol', 368, 1, 5, 3)
	 , ('Caminhos Cruzados', 285, 2, 5, 2)
	 , ('O Tempo e o Vento', 620, 1, 5, 1)

SELECT * FROM tbLivro