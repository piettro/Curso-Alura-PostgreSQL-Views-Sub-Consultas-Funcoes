SELECT (primeiro_nome juntar com ultimo_nome) AS nome_completo FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo FROM aluno;

SELECT TRIM(UPPER(CONCAT('Vinicius', NULL, 'Dias') || ' '));

SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    NOW()::DATE - data_nascimento
  FROM aluno;
  
SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    AGE(data_nascimento) AS idade
  FROM aluno;
  
SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
  FROM aluno;
  
SELECT TO_CHAR(NOW(),'dd-MM-yyyy');
SELECT TO_CHAR(NOW(),'dd');
SELECT TO_CHAR(NOW(),'yyyy');

SELECT TO_CHAR(128.3::REAL,'9999D99');