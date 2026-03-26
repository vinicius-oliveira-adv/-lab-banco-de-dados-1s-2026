/*INSERIR DADOS EM UMA TABELA*/

INSERT INTO usuario (
	nome, 
    email,
    senha)
VALUES (
	"Vinicius Oliveira",
    "vinixai123@gmail.com",
    "senha123");
    
INSERT INTO categoria (nome)
VALUES("filosofia");

INSERT INTO autor (nome)
VALUES("Franz Kafka");

INSERT INTO editora (nome)
VALUES("Open Read");
    
    
INSERT INTO livro (
    id_usuario,
    id_autor,
    id_editora,
    id_categoria,   
    titulo,
    sinopse,
    ano_publicacao)
VALUES (
	1,
    1,
    1,
    1,
	"Metamorfose",
    "Gregor Samnsa se torna um inseto",
    2026);
    
    SELECT * FROM livro;
    