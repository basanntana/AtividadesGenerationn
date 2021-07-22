create database db_ivypark;

use db_ivypark;

create table tb_beyprodutos(
id bigint auto_increment,
descricao varchar(255),
valor decimal (8,2),
cor varchar (255),
codigo int,
primary key (id)
);

insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Maiô", 549.49, "Laranja", 02);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Top corset", 249.49, "Laranja", 01);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Camisa", 149.49, "Laranja", 52);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Chinelo", 99.49, "Laranja", 00);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Vestido", 549.49, "Laranja", 62);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Calça", 649.49, "Laranja", 12);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Bucket", 349.49, "Laranja", 72);
insert into tb_beyprodutos(descricao, valor, cor, codigo) values ("Maiô", 549.49, "Laranja", 03);

select * from tb_beyprodutos where valor > 500;

select * from tb_beyprodutos where valor < 500;

update tb_beyprodutos set descricao = "saia" where id = 5;