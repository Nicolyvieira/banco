USE bdTransito

--a
SELECT COUNT (idMotorista) AS 'Quantidade de Motoristas'
FROM tbMotorista 

--b
SELECT nomeMotorista AS 'Quantidade de motoristas que possuem Silva no sobrenome'
FROM tbMotorista
WHERE nomeMotorista LIKE '% Silva%'

--c
SELECT COUNT(idMotorista) AS 'Quantidade de motoristas nascidos em 2000'
FROM tbMotorista
WHERE YEAR(dataNascismentoMotorista) = 2000

--d
SELECT COUNT(idMotorista) AS 'Quantidade de motoristas com mais de 10 pontos'
FROM tbMotorista
WHERE pontuacaoAcumulada > 10 

--e
SELECT SUM(pontuacaoAcumulada) AS 'Soma da pontução de todos os motoristas'
FROM tbMotorista

--f
SELECT AVG(pontuacaoAcumulada) AS 'Media da pontuação de todos os motoristas'
FROM tbMotorista

--g
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos do motorista de codigo 1'
FROM tbVeiculo
WHERE idMotorista = 1 

--h
SELECT COUNT(idVeiculo) AS 'Quantidadede de veiculos da placa que começa com A'
FROM tbVeiculo
WHERE placa LIKE 'A%'

--i
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos fabricados antes de 2019'
FROM  tbVeiculo
WHERE anoVeiculo < 2010

--j
SELECT AVG(anoVeiculo) AS 'Media do ano de fabricação de todos os veiculos'
FROM tbVeiculo

--K
SELECT COUNT(idVeiculo) AS 'Quantidade dos veiculos que tenham a palavra Sedan'
FROM tbVeiculo
WHERE modeloVeiculo LIKE '%Sedan%'

--l
SELECT SUM(pontosMulta) AS 'Soma dos pontos das multas do veiculo do codigo 2 '
FROM tbMulta
WHERE idVeiculo = 2 

--m
SELECT AVG(pontosMulta) AS 'Media de pontos das multas aplicadas'
FROM tbMulta

--n
SELECT COUNT(idMulta) AS 'Quantidade de multas aplicadas no mes de abril de 2018'
FROM tbMulta
WHERE MONTH(dataMulta) = 4 AND YEAR (dataMulta) = 2018

--o
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos cuja placa termine com o numero 1 ou 2'
FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'

--p
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos cuja placa termine com o numero 3 ou 4'
FROM tbVeiculo
WHERE placa LIKE '%3' OR placa LIKE '%4'

--q
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos cuja placa termine com o numero 5 ou 6'
FROM tbVeiculo
WHERE placa LIKE '%5' OR placa LIKE '%6'

--r
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos cuja placa termine com o numero 7 ou 8'
FROM tbVeiculo
WHERE placa LIKE '%7' OR placa LIKE '%8'

--s
SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos cuja placa termine com o numero 9 ou 0'
FROM tbVeiculo
WHERE placa LIKE '%9' OR placa LIKE '%0'

--T
SELECT anoVeiculo
FROM tbVeiculo
ORDER BY anoVeiculo

SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos fabricados em 2007'
FROM tbVeiculo
WHERE anoVeiculo = 2007 

SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos fabricados em 2009'
FROM tbVeiculo
WHERE anoVeiculo = 2009

SELECT COUNT(idVeiculo) AS 'Quantidade de veiculos fabricados em 2016'
FROM tbVeiculo
WHERE anoVeiculo = 2016

--u
SELECT pontuacaoAcumulada
FROM tbMotorista
ORDER BY pontuacaoAcumulada

SELECT COUNT(idMotorista) AS 'Quantidade de motoristas por pontuacao acumulada'
FROM tbMotorista
WHERE pontuacaoAcumulada = 18  

SELECT COUNT(idMotorista) AS 'Quantidade de motoristas por pontuacao acumulada'
FROM tbMotorista
WHERE pontuacaoAcumulada = 30

--V
SELECT COUNT(idMotorista) AS 'Quantidade de motoristas por pontuacao acumulada'
FROM tbMotorista
WHERE pontuacaoAcumulada = 20

--W
SELECT AVG(idMotorista) AS 'Media dos motoristas nascidos no ano de 2000'
FROM tbMotorista
WHERE YEAR(dataNascismentoMotorista) = 2000

--x
SELECT AVG(pontosMulta) AS 'Media dos pontos das multas aplicadas em julho de 2017'
FROM tbMulta
WHERE MONTH (dataMulta) = 7 AND YEAR (dataMulta) = 2017 

--y
SELECT COUNT (idVeiculo) AS 'Quantidade de veiculos (placa final 1 ou 2)'
FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'





