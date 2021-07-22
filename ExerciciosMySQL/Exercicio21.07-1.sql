create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classificacao varchar(255) not null,
cor varchar(255) not null,
primary key (id)
);

insert into tb_classe (classificacao, cor) values ("+18", "Vermelho");
insert into tb_classe (classificacao, cor) values ("Livre", "azul");
insert into tb_classe (classificacao, cor) values ("+16", "rosa");
insert into tb_classe (classificacao, cor) values ("Livre", "verde");
insert into tb_classe (classificacao, cor) values ("Livre", "preto");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Mulher Maravilha", 2000, 5000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Capitão América", 15000, 7000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("T'Chala", 8000, 10000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Homem de Ferro", 3000, 1000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Huck", 36000, 9000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Barbie", 7000, 100, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Moana", 00, 5000, 1);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Super Shock", 150000, 6000, 1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000; 

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.ataque, tb_classe.classificacao as Classe
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;



