INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) VALUES 
	('Vinicius', 'Dias', '1997-10-15'), 
	('Patrícia', 'Freitas', '1996-10-25'), 
	('Diogo', 'Oliveira', '1994-08-27'), 
	('Maria', 'Rosa', '1985-01-01');

INSERT INTO categoria (nome) VALUES ('Front-End'), ('Programação'), ('Banco de dados'), ('Data Science');

INSERT INTO curso (nome, categoria_id) VALUES
    ('HTML',1),
    ('CSS',1),
    ('JS',1),
    ('PHP',2),
    ('Java',2),
    ('C++',2),
    ('PostgreSQL',3),
    ('MySQL',3),
    ('Oracle',3),
    ('SQL Server',3),
    ('SQLite',3),
    ('Pandas',4),
    ('Machine Learning',4),
    ('Power BI',4);

INSERT INTO aluno_curso VALUES (1,4), (1,11), (2,1), (2,2), (3,4), (3,3),(4,4),(4,6),(4,5);

SELECT * FROM aluno 
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
SELECT aluno.primeiro_nome,
       aluno.ultimo_nome,
       COUNT(aluno_curso.curso_id) numero_cursos
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
GROUP BY 1,2
ORDER BY numero_cursos DESC;

SELECT * FROM curso 
	JOIN aluno_curso ON aluno_curso.curso_id = curso.id;
	
SELECT curso.nome,
       COUNT(aluno_curso.aluno_id) numero_alunos
    FROM curso
    JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY 1
ORDER BY numero_alunos DESC
LIMIT 1;

SELECT categoria.nome,
       COUNT(curso.id) numero_categorias
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY 1
ORDER BY numero_categorias DESC
LIMIT 1;