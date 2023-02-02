CREATE DATABASE db_empresa;
USE db_empresa;

create table tb_squad (
id_squad integer primary key,
nome varchar (50)
);

create table tb_projeto (
id_projeto integer primary key,
nome varchar (50),
id_squad integer,
foreign key (id_squad) references tb_squad (id_squad)
);
 
create table tb_pessoa (
 id_pessoa integer primary key,
 nome varchar (50),
 cargo varchar (100)
 );

create table tb_projeto_pessoa (
id_projeto integer,
foreign key (id_projeto) references tb_projeto (id_projeto),
id_pessoa integer,
foreign key (id_pessoa) references tb_pessoa (id_pessoa)
);

