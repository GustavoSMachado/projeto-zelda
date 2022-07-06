CREATE DATABASE zeldagg;

USE zeldagg;
-- tabela do usuario

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50) UNIQUE NOT NULL,
    senha VARBINARY(50)
);

select * from usuario;

-- tabela comentario 

create table comentario(
id_coment INT PRIMARY KEY auto_increment,
comentario varchar(500),
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);