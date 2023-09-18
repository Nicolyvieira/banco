CREATE DATABASE bdPetShop

USE bdPetShop

CREATE TABLE tbEspecie(
     idEspecie INT PRIMARY KEY IDENTITY(1,1)
	 ,nomeEspecie VARCHAR (20) NOT NULL 
)

CREATE TABLE tbServico(
     idServico INT PRIMARY KEY IDENTITY(1,1)
	 ,nomeServico VARCHAR (30) NOT NULL
)

CREATE TABLE tbCliente(
     idCliente INT PRIMARY KEY IDENTITY(1,1)
	 ,nomeCliente VARCHAR (50) NOT NULL
	 ,cpfCliente CHAR (15) 
	 ,rgCliente VARCHAR (15) NOT NULL
	 ,endCliente VARCHAR (50) NOT NULL
	 ,numEndCliente INT
	 ,compEndCliente (20) NOT NULL
	 ,cepCliente CHAR (9)
	 ,bairroCliente VARCHAR (20) NOT NULL
	 ,cidadeCliente VARCHAR (20) NOT NULL
)

CREATE TABLE tbFoneCliente(
     idFoneCliente INT PRIMARY KEY IDENTITY (1,1)
	 ,numFoneCliente VARCHAR (14) NOT NULL
	 ,idCliente INT FOREIGN KEY REFERENCES idCliente(idCliente) NOT NULL
)

CREATE TABLE tbRaca(
    idRaca INT PRIMARY KEY IDENTITY (1,1)
	,nomeRaca VARCHAR (20) NOT NULL
	,idEspecie INT FOREIGN KEY REFERENCES idEspecie(idEspecie) NOT NULL
)

CREATE TABLE tbPet(
    idPet INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,nomePet VARCHAR (30) NOT NULL
	,pesoPet DECIMAL NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES idCliente(idCliente) NOT NULL
	,idRaca INT FOREIGN KEY REFERENCES idRaca(idRaca) NOT NULL
)

CREATE TABLE tbAgenda(
    idAgenda INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,dataHoraAgenda SMALLDATETIME  NOT NULL
	,valorTotalAgenda SMALLMONEY NOT NULL
	,idPet INT FOREIGN KEY REFERENCES idPet(idPet) NOT NULL
)

CREATE TABLE tbAgendaServico(
    idAgendaServico INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,idAgenda INT FOREIGN KEY REFERENCES idAgenda(idAgenda) NOT NULL
	,idServico INT FOREIGN REFERENCES idServico(idServico) NOT NULL
)
  