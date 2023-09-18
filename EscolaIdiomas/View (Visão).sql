use bdEscolaIdiomas

--1-crie uma vis�o "Pre�o-baixo" que exiba o codigo,nome curso, carga horaria e valor do curso de todos os cursos que tenha pre�o inferior a 300 reais
CREATE VIEW vwOPre�o_Baixo AS
SELECT codCurso'codigo', nomeCurso'nome', cargaHorariaCurso'carga horaria', valorCurso'pre�o' FROM tbCurso
WHERE valorCurso<'300'

--2-usando a vis�o "pre�o- baixo" mostre todos os cursos ordenados por carga horaria
SELECT *from vwOPre�o_Baixo
ORDER BY [carga horaria]

--3-crie uma vis�o "quant_Aluno_Curso" que exiba o curso e a quantidade de alunos por turma
CREATE VIEW  vwCurso_quant_Curso as
SELECT COUNT (codTurma) AS 'quantidade' , nomeCurso FROM tbTurma
INNER JOIN tbCurso ON tbCurso.codCurso = tbCurso.codCurso
GROUP BY nomeCurso 


--4-usando a vis�o "quant_Aluno_Curso" exiba a turma com maior numeros de alunos
SELECT MAX (quant) FROM vwCurso_quant_Turma
SELECT nomeCurso FROM vwCurso_quant_Turma WHERE quant = 2

--5-crie uma vis�o "Curso_quant_Turma" que exiba o curso e a quantidade de turmas
CREATE VIEW  vwCurso_quant_Turma as
	SELECT COUNT(tbTurma.codCurso) as quant, nomeCurso from tbTurma
	   INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
	   GROUP BY nomeCurso

SELECT * FROM vwCurso_quant_Turma


--6-usando a vis�o "Curso_quant_Turma" exiba o curso com menor numeros de turmas

SELECT MIN (quant) FROM vwCurso_quant_Turma
SELECT nomeCurso FROM vwCurso_quant_Turma WHERE quant = 1
