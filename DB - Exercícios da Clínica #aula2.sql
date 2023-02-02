/* Na nova base de dados criada, encontre os seguintes valores:*/

select * from pacientes;
select * from consultas;
select * from medicos;
select * from quartos;

# listar o nomes de todos os pacientes 
select nome from pacientes;

# quantos médicos estão cadastrados?
select count(*) from medicos; 

# quais os nomes dos pacientes que fizeram mais de 2 consultas?
select pacientes.nome from pacientes join consultas on pacientes.id = consultas.id_paciente
group by pacientes.nome having COUNT(consultas.id) >= 2;

# listar todos os medicos com especialidade de ortopedia
select * from medicos where especialidade = 'ortopedia';

# listar apenas os pacientes maiores de 30 anos 
select * from pacientes where idade > 30;

# qual a quantidade de pacientes com idade acima de 40 anos? 
select count(idade) from pacientes where idade > 40;

# quais pacientes nao fizeram nenhuma consulta?
select pacientes.nome from pacientes join consultas on pacientes.id = consultas.id_paciente
group by pacientes.nome having COUNT(consultas.id) is null;

# qual a media de idade dos pacientes?
select avg(idade) from pacientes;

# qual o paciente mais novo?
select min(idade) from pacientes;

# qual o paciente mais velho?
select max(idade) from pacientes;

# quais cidades possuem mais pacientes?
select cidade, count(*) as pacientes from pacientes
group by cidade order by pacientes desc;

# quantos medicos estao acima de 40 anos?
select count(idade) from medicos where idade > 40;

# qual a capacidade da sala onde o medico Pedro atende? 
select medicos.nome, quartos.capacidade from quartos join medicos 
on quartos.id = medicos.id_quarto where nome = 'pedro';

# qual a capacidade da sala onde a medica Marcia atende? 
select medicos.nome, quartos.capacidade from quartos join medicos 
on quartos.id = medicos.id_quarto where nome = 'marcia';

# quantas consultas foram feitas por motivo de virose? 
select count(doenca) from consultas where doenca = 'virose';
 
# listar o nome e idade dos pacientes cujo motivo de consulta foi fratura 
select pacientes.nome, pacientes.idade, consultas.doenca from consultas join pacientes 
on pacientes.id = consultas.id_paciente where doenca = 'fratura';

# listar o nome dos medicos que fizeram atendimento de tosse 
select medicos.nome, consultas.doenca from consultas join medicos 
on medicos.id = consultas.id_medico where doenca = 'tosse';

# listar o nome dos medicos que fizeram atendimento de virose 
select distinct medicos.nome, consultas.doenca from consultas join medicos 
on medicos.id = consultas.id_medico where doenca = 'virose';

# listar o nome dos medicos e a capacidade dos quartos onde atendem 
select medicos.nome, quartos.capacidade from quartos join medicos 
on quartos.id = medicos.id_quarto;

# [desafio] quantas consultas aconteceram no dia 04/janeiro? 
select count(*) from consultas where date(data_hora) = '2023-01-04';

# [desafio] quantas consultas aconteceram no mes de janeiro? 
select count(*) from consultas where date(data_hora) like '%2023-01%';
