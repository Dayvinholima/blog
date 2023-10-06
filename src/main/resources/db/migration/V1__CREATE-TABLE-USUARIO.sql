CREATE TABLE IF NOT EXISTS tb_usuarios(
    idUsuario BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR (50) NOT NULL,
    sobreNome VARCHAR (150) NOT NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    senha VARCHAR (20) NOT NULL,
    PRIMARY KEY(idUsuario)
);

CREATE TABLE IF NOT EXISTS tb_posts(
    idPost BIGINT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    conteudo TEXT NOT NULL,
    dataDeCriacao DATE NOT NULL,
    idAutor BIGINT,
    FOREIGN KEY (`idAutor`) REFERENCES `tb_usuarios` (`idUsuario`) 
);

CREATE TABLE IF NOT EXISTS tb_comentarios(
    idComentario BIGINT NOT NULL AUTO_INCREMENT,
    texto TEXT NOT NULL,
    dataDeCriacao DATE NOT NULL,
    idAutor BIGINT NOT NULL,
    idPost BIGINT NOT NULL,
    FOREIGN KEY (`idAutor`) REFERENCES `tb_usuarios` (`idUsuario`),
    FOREIGN KEY (`idPost`) REFERENCES `tb_posts` (`idPost`)

);

