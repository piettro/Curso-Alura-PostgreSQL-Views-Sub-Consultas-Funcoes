SELECT * FROM curso;
SELECT * FROM categoria;

SELECT * FROM curso WHERE categoria_id = 1 OR categoria_id = 2;
SELECT * FROM curso WHERE categoria_id IN (1,2);

SELECT * FROM curso WHERE categoria_id IN (
	SELECT id FROM categoria WHERE nome NOT LIKE '% %'
);

SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

SELECT categoria, numero_cursos
	FROM algum_lugar
WHERE numero_cursos > 3;
 
SELECT categoria, numero_cursos
	FROM (
		SELECT categoria.nome AS categoria,
			COUNT(curso.id) as numero_cursos
        FROM categoria
            JOIN curso ON curso.categoria_id = categoria.id
        GROUP BY categoria
    ) AS categoria_cursos
WHERE numero_cursos > 3;
  
SELECT categoria.nome AS categoria, 
    COUNT(curso.id) as numero_cursos 
FROM categoria 
	JOIN curso ON curso.categoria_id = categoria.id 
GROUP BY categoria 
HAVING COUNT(curso.id) > 3;