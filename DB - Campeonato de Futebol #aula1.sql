CREATE DATABASE db_campeonato;
USE db_campeonato;

CREATE TABLE tb_campeonato (
id_camp INTEGER primary key,
duracao VARCHAR (255),
nome VARCHAR (255)
);

CREATE TABLE tb_time (
id_time INTEGER PRIMARY KEY,
classificacao INTEGER,
nome VARCHAR (255)
);

CREATE TABLE tb_jogador (
nome VARCHAR (255),
posicao VARCHAR (255),
id_time INTEGER, 
FOREIGN KEY (id_time) REFERENCES tb_time (id_time)
); 

CREATE TABLE tb_camp_time (
id_time INT, 
FOREIGN KEY (id_time) REFERENCES tb_time (id_time),
id_camp INT,
foreign key (id_camp) references tb_campeonato (id_camp)
);


