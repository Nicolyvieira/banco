CREATE DATABASE bdEscolaIdiomas
 

USE bdEscolaIdiomas

CREATE TABLE tbCurso(
    codCurso INT PRIMARY KEY IDENTITY (1,1) 
    ,nomeCurso VARCHAR (50) NOT NULL 
	,cargaHorariaCurso TIME NOT NULL
	,valorCurso SMALLMONEY NOT NULL 
	
)


CREATE TABLE tbTurma(
    codTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (60) NOT NULL 
	,horarioTurma TIME NOT NULL
	,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
	
)

CREATE TABLE tbAluno(
    codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (70) NOT NULL 
	,dataNascAluno SMALLDATETIME NOT NULL
	,rgAluno VARCHAR (30) NOT NULL 
	,naturalidadeAluno VARCHAR (90) NOT NULL 

)


CREATE TABLE tbMatricula(
   codMatricula INT PRIMARY KEY IDENTITY (1,1)
   ,dataMatricula DATE NOT NULL
   ,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
   ,codTurma INT FOREIGN KEY REFERENCES tbTurma(codturma)
)


