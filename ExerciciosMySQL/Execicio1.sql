create database db_homecoming;

use db_homecoming;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
funcao varchar (255),
tam varchar (255),
codigo int,
salario decimal(8,2),
primary key(id)
); 

insert into tb_funcionarios (nome, funcao, tam, codigo, salario) values("Ashley", "Baterista", "M", 01, 1500.00);
insert into tb_funcionarios (nome, funcao, tam, codigo, salario) values("Barbara", "Cantora", "P", 03, 3500.00);
insert into tb_funcionarios (nome, funcao, tam, codigo, salario) values("Heitor", "Jogador de Basquete", "G", 05, 5000.00);
insert into tb_funcionarios (nome, funcao, tam, codigo, salario) values("Beatriz", "Juiza", "M", 07, 25000.00);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

select * from tb_funcionarios;

update tb_funcionario set nome = "Amanda";



