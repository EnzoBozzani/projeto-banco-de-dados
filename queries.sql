-- 1. histórico escolar de qualquer aluno, retornando o código e nome da disciplina, 
-- semestre e ano que a disciplina foi cursada e nota final
-- Buscando o histórico escolar do aluno de RA 100000001
SELECT t.*, s.title FROM takes t INNER JOIN subj s ON t.subj_id = s.id WHERE t.student_id = '100000001';

-- 2. histórico de disciplinas ministradas por qualquer professor, com semestre e ano\
-- Buscando o histórico de disciplinas ministradas pelo professor de ID P005
SELECT t.* FROM teaches t WHERE  t.professor_id = 'P005';

-- 3. listar alunos que já se formaram (foram aprovados em todos os cursos de uma matriz curricular) 
-- em um determinado semestre de um ano
-- Buscando os alunos que se formaram no segundo semestre de 2018
SELECT * FROM graduate WHERE semester = 2 AND year = 2018;

-- 4. listar todos os professores que são chefes de departamento, junto com o nome do departamento
-- Buscando os professores que são chefes de departamento
SELECT p.* FROM department d INNER JOIN professor p ON p.id = d.boss_id;

-- 5. saber quais alunos formaram um grupo de TCC e qual professor foi o orientador
-- Buscando os alunos que formaram o grupo de TCC de ID CC1111111
SELECT s.*, p.name AS prof_name FROM student s 
    INNER JOIN tcc_group t ON s.group_id = t.id 
    INNER JOIN professor p ON t.professor_id = p.id WHERE s.group_id = 'CC1111111';