# SQL COMMANDS

## TECHNOLOGIES

- PostgreSQL
- SQLTools

## ORAGANIZATION

- Aula1
    - Aula1.sql => DDL and DML commands
    - Ex1.sql
- Aula2
    - Aula2.sql => GROUP, ORDER, LIMIT
    - Ex2.sql
- Aula3
    - Aula3.sql => SUBQUERY, DISTINCT, UNION
    - Ex3.sql
- Aula4
    - Ex4.sql => JOIN, SUBQUERY, GROUP BY
- Aula5
    - Lista1.sql => HAVING, CASE, LIKE
- Aula6
    - Aula6.sql => VIEWS
- Aula7
    - Aula7.sql => FUNCTIONS
- Aula8
    - Aula8.sql => REVIEW FUNCTIONS
- Aula9
    - Aula9.sql => PROCEDURES
    - Ex9.sql => EXERCISES
    - TablesEx9.sql => CREATE TABLES FOR EX9

## DATA

- Contains the data (txt) used in the exercises and examples.
- The insertion in databases is done with COPY command.
- The data is organized by exercise.
<pre><code>COPY DATABASE (COLUMNS) 
FROM 'C:\Program Files\PostgreSQL\17\data\povoating\Lista1\Chamada.txt' 
WITH (FORMAT csv, DELIMITER E'\t', HEADER false);</code></pre>