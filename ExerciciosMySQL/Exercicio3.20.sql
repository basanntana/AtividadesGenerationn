create database db_etec_basilides;

use db_etec_basilides;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255),
professor varchar (255),
notas int,
faltas int,
primary key (id)
);

insert into tb_estudantes (nome, professor, notas, faltas) values ("Maria Eduarda", "Carlos", 10, 0);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Vitor", "Andreia", 5, 7);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Kezya", "Janete", 8, 0);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Joao", "Carlos", 10, 2);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Isabel", "Andreia", 9, 3);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Barbara", "Carlos", 10, 5);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Tadeu", "Andreia", 6, 0);
insert into tb_estudantes (nome, professor, notas, faltas) values ("Eduardo", "Carlos", 4, 15);

select * from tb_estudantes where notas > 7;

select * from tb_estudantes where notas < 7;

update tb_estudantes set nome = "Antonio" where id = 1;


