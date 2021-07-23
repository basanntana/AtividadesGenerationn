create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
medicamento varchar(255),
cosmetico varchar(255),
vitamina varchar(255),
primary key (id)
);

insert into tb_categoria (medicamento, cosmetico, vitamina) values ("generico", "esmalte","baristar");
insert into tb_categoria (medicamento, cosmetico, vitamina) values ("etico", "tinta capilar","tonico fontoura");
insert into tb_categoria (medicamento, cosmetico, vitamina) values ("similar", "batom","suplemento");
insert into tb_categoria (medicamento, cosmetico, vitamina) values ("similar", "creme","gerovital");
insert into tb_categoria (medicamento, cosmetico, vitamina) values ("etico", "desodorante","lavitan");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
tamanho varchar(255),
valor decimal (8,2),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Domperidona", "medio", 43.00, "2025-04-11", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Rexona", "grande", 18.00, "2022-05-01", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Nivea", "pequeno", 53.00, "2021-10-23", 1);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Ruby Rose", "medio", 3.00, "2019-01-21", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Nesaldina", "pequeno", 15.00, "2025-04-11", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Bruma", "medio", 49.00, "2021-05-11", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Tenis Pé", "grande", 20.00, "2019-12-08", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Veet", "medio", 45.00, "2025-06-02", 2);


select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%B%";

select tb_produto.nome, tb_produto.valor, tb_categoria.cosmetico as Categoria
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;