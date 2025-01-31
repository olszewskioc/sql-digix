/*
------------------------------------------------------------------

 						AULA 2 (31/01/25)
						THIAGO OLSZEWSKI

------------------------------------------------------------------
*/

-- SELECIONAR VALORES DAS TABELAS
SELECT * FROM CARGO;
SELECT * FROM USUARIO;

-- ABREVIAR NOME DA TABELA
SELECT C.NOME FROM CARGO C;
SELECT U.NOME, C.NOME FROM USUARIO U, CARGO C;

-- CONDICIONAL PARA SELEÇÃO COM OPERADORES DE COMPARAÇÃO
SELECT C.NOME, C.SALARIO FROM CARGO C WHERE C.SALARIO >= 6000.00;
SELECT C.NOME FROM CARGO C WHERE C.SALARIO >= 3000.00 AND C.SALARIO <= 8000.00;

-- CONDICIONAL COM IN E NOT IN
SELECT C.NOME FROM CARGO C WHERE C.ID IN (1, 2);
SELECT C.NOME FROM CARGO C WHERE C.ID NOT IN (1, 2);

-- BETWEEN (PODE SER UTILIZADO COM STRING TAMBÉM)
SELECT C.NOME, C.SALARIO FROM CARGO C WHERE C.SALARIO BETWEEN 6000 AND 10000;

-- OPERADOR LIKE PARA PESQUISAR SUBSTRING
SELECT C.NOME FROM CARGO C WHERE C.NOME LIKE '%OW%';	-- QUALQUER COISA QUE TENHA OW NO MEIO
SELECT C.NOME FROM CARGO C WHERE C.NOME LIKE 'GE%';	-- QUALQUER COISA QUE TENHA GE NO COMEÇO
SELECT C.NOME FROM CARGO C WHERE C.NOME LIKE '%A';	-- QUALQUER COISA QUE TENHA A NO FINAL

-- QUALQUER COISA QUE TENHA A NO MEIO E TENHA 10 CARACTERES
SELECT C.NOME FROM CARGO C WHERE C.NOME LIKE '%E%' AND LENGTH(C.NOME) = 7;

-- ORDER BY (DESC = DESCENDENTE, ASC = ASCENDENTE)
SELECT C.NOME, C.SALARIO FROM CARGO C ORDER BY C.NOME DESC;
SELECT C.NOME, C.SALARIO FROM CARGO C ORDER BY C.NOME ASC;

-- LIMITAR OS RESULTADOS
SELECT * FROM USUARIO LIMIT 1;

-- GROUP BY
SELECT C.NOME, U.NOME FROM CARGO C, USUARIO U
WHERE U.ID = C.USUARIO 
GROUP BY C.ID, U.ID;

-- COUNT QUANTOS CARGOS CADA USUARIO TEM
SELECT U.NOME, COUNT(C.ID) CARGOS FROM USUARIO U, CARGO C
WHERE U.ID = C.USUARIO GROUP BY C.USUARIO, U.ID;