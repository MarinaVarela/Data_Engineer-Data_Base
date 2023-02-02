/* Utilizando o database criado "Campeonato" realize os seguintes exercícios: 
- Inserir 3 times 
- Inserir 4 registros na tabela de jogador
- Inserir 2 campeonatos 
- Relacionar os 3 times nos 2 campeonatos disponiveis */

INSERT INTO tb_time (id_time, classificacao, nome) VALUES (1, 2, 'time1'), (2, 3, 'time2'), (3,1,'time3');
INSERT INTO tb_jogador (nome, posicao, id_time) VALUES ('nome1', 'atacante', 2), ('nome2', 'volante', 1), ('nome3', 'zagueiro', 3);	
INSERT INTO tb_campeonato (id_camp, duracao, nome) VALUES (1, 45, 'campeonato1'), (2, 90, 'campeonato2');	
INSERT INTO tb_camp_time (id_time, id_camp) VALUES (3, 1), (2,1), (1,2);	
