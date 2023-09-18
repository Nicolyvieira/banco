USE bdEstoque

--a
  SELECT descProduto 'Produto', nomeFabricante 'Fabricante' FROM tbProduto
   INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante 

--b
  SELECT descProduto 'Produto', nomeFornecedor 'Fornecedor' FROM tbProduto
   INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--c
  SELECT SUM(tbProduto.codProduto) 'Soma dos Produtos', nomeFabricante 'Fabricante' FROM tbProduto
  INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante 
    GROUP BY tbFabricante.nomeFabricante 
--d
  SELECT COUNT(tbVenda.codVenda) 'Total de Vendas', nomeCliente 'Cliente' FROM tbVenda
   INNER JOIN tbCliente ON tbVenda.codCliente = tbCliente.codCliente
    GROUP BY tbCliente.nomeCliente 

--e
  SELECT AVG(tbProduto.valorProduto) 'Media dos Preços dos Produtos', nomeFornecedor 'Fornecedor' FROM tbProduto
   INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
     GROUP BY tbFornecedor.nomeFornecedor 

--f
  SELECT SUM (tbVenda.codVenda) 'Soma das Vendas' , nomeCliente 'Cliente' FROM tbVenda
    INNER JOIN tbCliente ON tbVenda.codCliente =  tbCliente.codCliente
	 GROUP BY tbCliente.nomeCliente
	  ORDER BY tbCliente.nomeCliente

--g
  SELECT SUM (tbProduto.valorProduto) 'Soma dos Produtos' , nomeFabricante 'Fabricante' FROM tbProduto
    INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
	 GROUP BY tbFabricante.nomeFabricante

--h
  SELECT AVG (tbProduto.valorProduto) 'Média dos Preços dos Produtos' , nomeFornecedor 'Fornecedor' FROM tbProduto
    INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	 GROUP BY tbFornecedor.nomeFornecedor

--i
  SELECT SUM (tbVenda.codVenda) 'Soma das Vendas' , descProduto 'Produto' FROM tbVenda
   INNER JOIN tbItensVenda ON tbItensVenda.codVenda = tbVenda.codVenda
    INNER JOIN tbProduto ON tbItensVenda.codProduto = tbProduto.codProduto
	 GROUP BY tbProduto.descProduto

--j
  SELECT SUM (tbVenda.codVenda) 'Soma das Vendas' , nomeCliente 'Cliente' FROM tbVenda
   INNER JOIN tbCliente ON tbVenda.codCliente = tbCliente.codCliente
    WHERE MONTH (dataVenda) = 2 AND YEAR (dataVenda) = 2014 
	GROUP BY tbCliente.nomeCliente