-- Criação do Base de Dados
--create database crm;

-- Criação da Tabela
create table Usuarios (
	id SERIAL,
	nome VARCHAR(50) NOT NULL,
    login VARCHAR(25) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(256) NOT NULL,
    tipo VARCHAR(10) NOT NULL,
	estado BOOLEAN DEFAULT TRUE
);

-- Definição de Constraints
alter table Usuarios
add constraint pk_usuarios primary key (id);

alter table Usuarios
add constraint accepted_types check (tipo = 'Client' or tipo = 'Admin');

-- Inserção no Banco
insert into usuarios
(nome, login, email, senha, tipo)
values ('Paulo Borges', 'paulo', 'paulo@gmail.com', encode(sha384('paulo'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Debora Liliane', 'debora', 'debora@gmail.com', encode(sha384('debora'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('David Jansen', 'david', 'david@gmail.com', encode(sha384('david'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Marianna Leandra', 'maremaremare', 'mare@gmail.com', encode(sha384('lagartixa'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Nayara Thaiza', 'nayara', 'nayara@gmail.com', encode(sha384('ornitorrinco'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Vinicius Rodrigues', 'vinicius', 'vinicius@gmail.com', encode(sha384('vinicius'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Roberta Rasovit', 'robertinha', 'roberta@gmail.com', encode(sha384('rasovit'), 'hex'), 'Admin');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Cliente Um', 'cliente1', 'cliente1@gmail.com', encode(sha384('cliente1'), 'hex'), 'Client');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Cliente Dois', 'cliente2', 'cliente2@gmail.com', encode(sha384('cliente2'), 'hex'), 'Client');

insert into usuarios
(nome, login, email, senha, tipo)
values ('Cliente Tres', 'cliente3', 'cliente3@gmail.com', encode(sha384('cliente3'), 'hex'), 'Client');
-- Visualizar tuplas completas
select * from usuarios;
