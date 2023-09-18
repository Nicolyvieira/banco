CREATE DATABASE bdTransito
USE bdTransito

CREATE TABLE tbMulta (
idMulta INT PRIMARY KEY IDENTITY (1,1)
 ,dataMulta SMALLDATETIME NOT NULL
 ,horaMulta TIME NOT NULL
 ,pontosMulta INT NOT NULL
 ,idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
)

CREATE TABLE tbVeiculo (
idVeiculo INT PRIMARY KEY IDENTITY (1,1)
 ,modeloVeiculo VARCHAR (40) NOT NULL
 ,placa VARCHAR (9) NOT NULL
 ,renavam VARCHAR (50) NOT NULL
 ,anoVeiculo SMALLDATETIME NOT NULL
 ,idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista)
)

CREATE TABLE tbMotorista (
idMotorista INT PRIMARY KEY IDENTITY (1,1)
 ,nomeMotorista VARCHAR (30) NOT NULL
 ,dataNascismentoMotorista DATETIME NOT NULL 
 ,cpfMotorista CHAR (20) NOT NULL
 ,CNHMotorista VARCHAR (10) NOT NULL
 ,pontuacaoAcumulada INT NOT NULL 
)