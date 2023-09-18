USE bdEscolaIdiomas

--1 Apresentar os nomes dos alunos ao lado do nome do curso que eles fazem 
SELECT nomeAluno 'Aluno', nomeCurso 'Curso' FROM tbAluno
  INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
   INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
    INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
    
--2 Apresentar a quantidade de alunos matriculados por nome do curso
SELECT COUNT (tbAluno.codAluno) 'Quantidade de alunos', nomeCurso 'Curso' FROM tbAluno
  INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
   INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
    INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
	    GROUP BY tbCurso.nomeCurso


--3 Apresentar a quantidade de alunos matriculados por nome da turma 
SELECT COUNT (tbAluno.codAluno) 'Quantidade de alunos', nomeTurma 'Turma' FROM tbAluno
   INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
    INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
	    GROUP BY tbTurma.nomeTurma


--4 Apresentar a quantidade de alunos que fizerama a matricula em maio de 2016
SELECT COUNT (tbAluno.codAluno) 'Quantidade de alunos', nomeTurma 'Turma' FROM tbAluno
   INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
    WHERE MONTH(dataMatricula) = 05 AND YEAR(dataMatricula) = 2016
	    GROUP BY tbMatricula.dataMatricula


--5 Apresentar o nome dos alunos em ordem alfabetica ao lado do nome das turmas em que estão matriculados
SELECT nomeAluno 'Aluno1', nomeTuma 'Turma' FROM tbAluno
   INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
   INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
       ORDER BY tbTurma.nomeAluno


--6 Apresentar o nome dos cursos e os horarios em que eles são oferecidos 
SELECT nomeCurso 'Curso', horarioTurma 'Horario da Turma' FROM tbCurso
   INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso


--7 Apresentar a quantidade de alunos nascidos por estado
SELECT COUNT(codAluno) 'Quantidade de Alunos', naturalidadeAluno 'Naturalidade' FROM tbAluno 
   GROUP BY tbAluno.naturalidadeAluno


--8 Apresentar o nome dos alunos ao lado da data de matricula no formato dd/mmm/aaaa
SELECT nomeAluno 'Aluno', FORMAT(dataMatricula, 'd', 'pt-br') 'Data da matricula' FROM tbAluno
    INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno


--9 Apresentar os alunos cujos nome comece com A e que estejam matriculados no curso de ingles 
SELECT nomeAluno 'Aluno', nomeCurso 'Curso' FROM tbAluno
    INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codMatricula
	INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
	 INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.nomeCurso
	    WHERE nomeAluno LIKE 'A%' AND nomeCurso = 'ingles' 



--10 Apresentar a quantidade de matriculas feitas no ano de 2016
SELECT COUNT(codMatricula) 'Quantidade de matriculas feita no ano de 2016' FROM tbMatricula
   WHERE YEAR(dataMatricula) = 2016 






