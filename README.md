# Desafio Técnico: Blog API
Este projeto consiste em uma API REST desenvolvida com Spring Boot para um sistema de Blog. A API permite a criação, atualização, exclusão e consulta de postagens, comentários e autores, mantendo a consistência dos relacionamentos entre as entidades.

Objetivo
O objetivo deste desafio é avaliar minhas habilidades no desenvolvimento de uma API REST usando o Spring Boot, incluindo o uso de diferentes tipos de relacionamentos entre entidades.

Entidades
Entidade Usuário
idUsuario (BIGINT AUTOINCREMENT)
nome (VARCHAR(50))
sobrenome (VARCHAR(150))
email (VARCHAR(100))
senha (VARCHAR(20))
Entidade Post
idPost (BIGINT AUTOINCREMENT)
titulo (VARCHAR(255))
conteudo (TEXT)
dataDeCriacao (DATE)
idAutor (BIGINT)
Entidade Comentário
idComentario (BIGINT AUTOINCREMENT)
texto (TEXT)
dataDeCriacao (DATE)
idAutor (BIGINT)
idPost (BIGINT)
Configuração do Projeto
Configure um projeto Spring Boot usando a ferramenta de sua escolha, como o Spring Initializr.

Criar as entidades "Usuário", "Post" e "Comentário" com os campos especificados acima. Utilize um banco de dados MySQL para criar as tabelas "tb_usuarios", "tb_posts" e "tb_comentarios".

Endpoints da API
Posts
GET /posts: Retorna a lista de todas as postagens com seus detalhes, incluindo os comentários associados e os detalhes do autor.
GET /posts/{id}: Retorna os detalhes de uma postagem específica com base no ID, incluindo os comentários associados e os detalhes do autor.
POST /posts: Permite criar uma nova postagem.
PUT /posts/{id}: Permite atualizar os detalhes de uma postagem existente com base no ID.
DELETE /posts/{id}: Permite excluir uma postagem com base no ID. Os comentários associados à postagem excluída serão automaticamente removidos.
Comentários
POST /posts/{postId}/comments: Permite adicionar um novo comentário a uma postagem existente.
PUT /comments/{id}: Permite atualizar o texto de um comentário existente.
DELETE /comments/{id}: Permite excluir um comentário com base no ID.
Autores
GET /authors: Retorna a lista de todos os autores com seus detalhes, incluindo as postagens associadas.
GET /authors/{id}: Retorna os detalhes de um autor específico com base no ID, incluindo as postagens associadas.
POST /authors: Permite criar um novo autor.
PUT /authors/{id}: Permite atualizar os detalhes de um autor existente com base no ID.
DELETE /authors/{id}: Permite excluir um autor com base no ID.
Boas Práticas
Utilizando boas práticas de organização de código, como separação em camadas (controller, model, repository) e tratamento adequado de erros.
Observações
Neste desafio, eu está sendo avaliado tanto na implementação das funcionalidades da API quanto na configuração adequada dos diferentes tipos de relacionamentos entre entidades. Certifique-me de que a API possa lidar com a criação, atualização e exclusão de postagens, comentários e autores, mantendo a consistência dos relacionamentos.

Este desafio é uma oportunidade para demonstrar minhas habilidades de desenvolvimento em Spring Boot e práticas de programação.
