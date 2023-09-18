USE bdTransito

INSERT tbMotorista(nomeMotorista, dataNascismentoMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumulada)
VALUES ('Gabriela Soares', '15/08/2000',' 123.456.789-11', '9876543210', 18)
    ,('Lucas Martins', '04/02/2000', '987.654.321-99', '1023456789', 30)
	,('Flavia Silva', '22/10/1998', '234.567.890-45', '7654321089', 30)

	SELECT * FROM tbMotorista

	INSERT tbVeiculo(modeloVeiculo, placa, renavam, anoVeiculo, idMotorista)
	VALUES ('Gol - Volkswagen', 'ABC-1234', '87654320195', 2016, 1)
	     ,('Uno - Fiat', 'BUS-9025', '98765432102', 2016, 1)
		 ,('Celta - General Motors', 'AEO-4321', '23456789021', 2009, 1)
		 ,('HB20 - Hyundai', 'BDC-2463', '321456789', 2007, 2)
		 ,('Sandero - Renault', 'ACB-7532', '76543211965', 2016, 2)
		 ,('Sedan - Ford', 'EFG-9876', '56789098765', 2007, 2)
		 ,('Corolla - Toyota', 'JKL-4567', '45678901235', 22016, 3)
		 ,('Onix - Chevrolet', 'NRH-5098', '2460135795', 2007, 3)
		 ,('Versa - Nissan', 'KMN-1959', '35790214562', 2009, 3)

		 SELECT * FROM tbVeiculo

		 INSERT tbMulta (dataMulta, horaMulta, pontosMulta, idVeiculo)
		 VALUES ('02/04/2018 15:00:00', 3, 1)
		    ,('19/07/2017 09:30:00', 3, 1)
			,('25/02/2019 19:00:00', 4, 2)
			,('01/05/2017 11:05:00', 3, 2)
			,('30/12/2016 14:20:00', 5, 3)
			,('11/04/2018 08:00:00', 3, 3)
			,('29/07;2017 20:35:00', 7, 4)
			,('06/04/2018 22:40:00', 4, 4)
			,('22/11/2017 10:45:00', 7, 5)
			,('13/05/2019 07:55:00', 3, 5)
			,('05/08/2019 09:10:00', 5, 6)
			,('24/04/2018 18:40:00', 4, 6)
			,('17/07/2017 23:00:00', 7, 7)
			,('02/07/2017 06:55:00', 5, 7)
			,('15/04/2018 07:50:00', 4, 8)
			,('09/04/2018 12:25:00', 3, 8)
			,('16/06/2019 13:00:00', 4, 9)
			,('04/09/2016 15:08:00', 7, 9)

			SELECT * FROM tbMulta
