CREATE database db_clinica;
use db_clinica;

CREATE TABLE quartos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	andar SMALLINT NOT NULL,
	capacidade SMALLINT
);


CREATE TABLE medicos(
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	especialidade CHAR(20),
	cpf VARCHAR(11) UNIQUE,
	cidade VARCHAR(30),
	id_quarto INT,
	FOREIGN KEY (id_quarto) REFERENCES quartos (id) -- se usar foreign key tem que ter a coluna nas 2 tabelas!
);



CREATE TABLE pacientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	cidade CHAR(30),
	cpf VARCHAR(11) UNIQUE
);



CREATE TABLE consultas(
  	id     INT PRIMARY KEY AUTO_INCREMENT,
	id_medico     INT,
	id_paciente     INT,
	data_hora      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	doenca VARCHAR(40) NOT NULL,
  	FOREIGN KEY (id_medico) REFERENCES medicos (id),
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id)
);

CREATE INDEX doenca ON consultas(doenca);


-- ambulatorios
INSERT INTO quartos(andar, capacidade)
VALUES (1, 2);

INSERT INTO quartos(andar, capacidade)
VALUES (1, 4);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 1);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 3);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 2);

INSERT INTO quartos(andar, capacidade)
VALUES (3, 5);

INSERT INTO quartos(andar, capacidade)
VALUES (3, 7);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 10);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 10);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 12);



-- medicos
INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('joao', 40, 'ortoperia', '10000100000', 'florianopolis', 1);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('maria', 42, 'traumatologia', '10000100001', 'blumenau', 2);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('pedro', 51, 'pediatria', '10000100002', 'sao jose', 3);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('carlos', 28, 'ortopedia', '10000100003', 'joinville', 4);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('marcia', 33, 'neurologia', '10000100004', 'santo andre', 5);




-- pacientes
INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('ana', 20, 'florianopolis', '12345678910');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('paulo', 24, 'santo andre', '12345678911');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('lucia', 30, 'sao paulo', '12345678912');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('carlos', 28, 'joinville', '12345678913');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('antonio', 80, 'rio de janeiro', '12345678914');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('regiane', 57, 'salvador', '12345678915');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('vera', 70, 'natal', '12345678916');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('rita', 50, 'recife', '12345678917');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('roberto', 10, 'são luis', '12345678918');


INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (1, 1, '2023-01-02 07:00:00', 'sarampo');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (1, 4, '2023-01-02 08:30:00', 'fratura');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 2, '2023-01-02 10:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 2, '2023-01-02 16:00:00', 'fratura');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 6, '2023-01-04 10:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 7, '2023-01-04 19:00:00', 'gastrite');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 3, '2023-01-04 11:00:00', 'tosse');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 5, '2023-01-07 09:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 6, '2023-01-07 10:00:00', 'queda');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-07 14:30:00', 'garganta inflamada');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 1, '2023-01-08 16:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-08 17:00:00', 'rotina');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 8, '2023-01-08 17:30:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 1, '2023-01-10 08:00:00', 'gripe');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-10 13:30:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 8, '2023-01-10 14:00:00', 'rotina');

select nome from pacientes;
select count(*) from medicos; 
select nome from pacientes, consultas where pacientes.id= consultas.id_paciente;

select * from pacientes;
select * from consultas;
