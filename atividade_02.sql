create database db_commerce;

use db_commerce;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
quantidade int not null,
preco decimal not null,
descricao varchar(255)
);

alter table tb_produtos modify preco decimal(6,2);

insert into tb_produtos(nome, quantidade, preco, descricao) values
("Microondas", 50, 400.00, "Electrolux Branco"),
("Geladeira", 80,  2100.00, "Electrolux Preta"),
("Liquidificador", 120.00, 350.99, "Consul Branco"),
("Máquina de lavar louça", 50, 2599.00, "Samsung inox"),
("Forno Elétrico", 40, 229.79, "Philco 46L Branco"),
("Fogão", 140, 549.00, "Itatiaia 4 bocas Bivolt"),
("Air Fryer", 250, 369.99, "Mondial 4L"),
("Smart Tv 85", 400, 8372.90 , "TCL 4K");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 259.99 where id = 3;

 