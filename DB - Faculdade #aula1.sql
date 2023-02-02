CREATE DATABASE db_faculdade;
USE db_faculdade;

create table tb_departamento (
id_dep int,
diretor varchar (255)
);

create table tb_disciplina (
id_disc integer primary key,
id_dep int,
foreign key (id_dep) references departamento (id_dep),
tb_professor varchar (40)
);

alter table departamento add primary key (id_dep);

create table tb_aluno (
id_aluno integer primary key,
matricula varchar (20)
);

create table tb_disc_aluno (
id_aluno integer,
foreign key (id_aluno) references tb_aluno (id_aluno),
id_disc integer,
foreign key (id_disc) references tb_disciplina (id_disc)
);


