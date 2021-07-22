create database db_realpowerpuff;

use db_realpowerpuff;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar (255),
salario decimal (8,2),
cargo varchar (255),
idade int,
tamanhoroupa varchar (255),
primary key(id)
);

insert into tb_funcionaries (nome, salario, cargo, idade, tamanhoroupa) values ("Beatriz", 3500.00, "Advogada", 24, "M" );
insert into tb_funcionaries (nome, salario, cargo, idade, tamanhoroupa) values ("Bárbara", 5000.00, "Desenvolvedora", 21, "P" );
insert into tb_funcionaries (nome, salario, cargo, idade, tamanhoroupa) values ("Sabrina", 1000.00, "Costureira", 20, "M" );
insert into tb_funcionaries (nome, salario, cargo, idade, tamanhoroupa) values ("Raniel", 10000.00, "Produtor", 26, "GG" );
insert into tb_funcionaries (nome, salario, cargo, idade, tamanhoroupa) values ("Vanderléia", 2500.00, "Contadora", 27, "P" );

select * from tb_funcionaries where salario > 2000.00;

select * from tb_funcionaries where salario < 2000.00;

update tb_funcionaries set salario = 1500.00 where id = 3 ;

