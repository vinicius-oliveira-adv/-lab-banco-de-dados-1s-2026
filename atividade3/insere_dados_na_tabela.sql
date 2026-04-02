/*INSERIR DADOS EM UMA TABELA*/

INSERT INTO usuario (nome, email, senha)
VALUES 
	("Vinicius Oliveira", "vinixai123@gmail.com", "senha123"),
	("Vitor Patrick", "patrickchaves@a.ucb.br", "PatrickStrela"),
	("Livia Viana", "livia.alves@gmail.com", "Lialvi711"),
    ("Joao Gomes", "vitor.vfarias@a.ucb.br", "@Jvg18101995");
    
INSERT INTO categoria (nome)
VALUES
	("filosofia"),
	("História"),
    ("Sociologia"),
    ("Direito"),
    ("Biologia");

INSERT INTO autor (nome)
VALUES
	("Franz Kafka"),
    ("Albert Camus"),
    ("Meldell"),
    ("Hans Kelsen"),
    ("Darcy Ribeiro");

INSERT INTO editora (nome)
VALUES
	("Open Read"),
    ("Santos"),
    ("Leitura"),
    ("Libre");

INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, sinopse, ano_publicacao)
VALUES 
	(1, 1, 1, 1, "Metamorfose", "Gregor Samnsa se torna um inseto", 2026), 
	(10, 2, 2, 1, "O Estrangeiro", "Absurdismo literário de Albert Camus", 1968),
    (11, 4, 3, 9, "Teoria Pura do Direito", "Considerações sobre o positivismo", 1945),
    (12, 5, 4, 8, "O povo brasileiro", "Origem cultural do povo brasileiro", 1987);
    
SHOW TABLES;

/* Método de edição dos atributos de uma tabela*/
SELECT * FROM livro; /* Seleciona a tabela, cujo atributo será editado */
UPDATE livro /* Comando de atualização/edição dessa mesma tabela */
SET sinopse = "Origem cultural do povo brasileiro" /* Seleciona o atributo específico a ser editado e atribui a nova informação */
WHERE id_livro=4; /* Livro específico que vai ser alterado - indicado atraves do id */

   