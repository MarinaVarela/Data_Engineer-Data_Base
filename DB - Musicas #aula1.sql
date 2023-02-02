CREATE DATABASE db_musica;
USE db_musica;

create table tb_cantor (
id_cantor integer primary key,
nome varchar (200),
genero varchar (200)
);

create table tb_album (
id_album integer primary key,
nome varchar (200),
id_cantor integer,
foreign key (id_cantor) references tb_cantor (id_cantor)
);

create table tb_musica (
id_musica integer primary key,
nome varchar (200)
);

create table tb_musica_album (
id_musica integer,
foreign key (id_musica) references tb_musica (id_musica),
id_album integer,
foreign key (id_album) references tb_album (id_album)
);
