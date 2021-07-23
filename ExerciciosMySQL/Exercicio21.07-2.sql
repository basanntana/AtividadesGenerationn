create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
salgada varchar(255),
doce varchar(255),
tamanho varchar(255),
primary key (id)
);

insert into tb_categoria (salgada, doce, tamanho) values ("sim", "não","grande");
insert into tb_categoria (salgada, doce, tamanho) values ("sim", "sim","broto");
insert into tb_categoria (salgada, doce, tamanho) values ("não", "sim","média");
insert into tb_categoria (salgada, doce, tamanho) values ("não", "sim","média");
insert into tb_categoria (salgada, doce, tamanhp) values ("SIM", "NÃO","GRANDE");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
temperatura varchar(255),
sabor varchar(255),
valor decimal (8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Congelada", "Portuguesa", 43.00, 1 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Quente", "Camarão", 56.00, 2 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Quente", "Bahiana", 29.00, 3 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Congelada", "4 Queijos", 60.00, 4 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Congelada", "Brócolis", 45.00, 1 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Quente", "Toscana", 50.00, 1 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Congelada", "Romeu e Julieta", 43.00, 2 );
insert into tb_pizza (temperatura, sabor, valor, categoria_id) values ("Congelada", "Atumm", 39.00, 1 );


select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select * from tb_pizza where sabor like "%C%";

select tb_pizza.sabor, tb_pizza.valor, tb_categoria.salgada as Categoria
from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;



