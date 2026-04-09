USE biblioteca_pessoal_2026;

SELECT * FROM autor;
SELECT * FROM livro WHERE id_autor = 8;

SELECT * FROM categoria;
SELECT * FROM livro WHERE id_categoria = 6;

SELECT * FROM categoria;
UPDATE categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

SELECT * FROM categoria;
DELETE FROM livro 
WHERE id_categoria = 6;
DELETE FROM categoria
WHERE id_categoria = 6;

SELECT * FROM categoria;
SELECT * FROM livro WHERE id_categoria = 6;

