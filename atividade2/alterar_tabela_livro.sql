USE biblioteca_pessoal_1s2026;

-- Remover colunas antigas 

ALTER TABLE livro
DROP COLUMN autor,
DROP COLUMN editora,
DROP COLUMN categoria;

-- Adicionar novas colunas, onde constarão o id das outras tabelas (ex: id_autor, id_editora e etc)

ALTER TABLE livro
ADD COLUMN id_usuario INT NOT NULL,
ADD COLUMN id_autor INT NOT NULL,
ADD COLUMN id_editora INT NOT NULL,
ADD COLUMN id_categoria INT NOT NULL,
ADD COLUMN data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Implementa as chaves estrangeiras

ALTER TABLE livro
ADD CONSTRAINT fk_livro_usuario
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
ON DELETE CASCADE;

ALTER TABLE livro
ADD CONSTRAINT fk_livro_autor
FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (id_editora) REFERENCES editora(id_editora)
ON DELETE RESTRICT;

ALTER TABLE livro
ADD CONSTRAINT fk_livro_categoria
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
ON DELETE RESTRICT;

