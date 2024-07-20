create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment primary key,
nome varchar(255),
descricao varchar(255)
);

create table tb_pizzas(
id bigint auto_increment primary key,
nome varchar(255),
categoria_id bigint,
preco decimal (8,2) not null,
tamanho varchar(100),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Vegetariana', 'Pizzas com ingredientes vegetarianos.'),
('Carnes', 'Pizzas com diversas opções de carne.'),
('Frutos do Mar', 'Pizzas com frutos do mar frescos.'),
('Queijos', 'Pizzas com uma variedade de queijos.'),
('Especiais', 'Pizzas especiais com ingredientes selecionados.');

INSERT INTO tb_pizzas (nome, categoria_id, preco, tamanho) VALUES
('Pizza Margherita', 1, 25.00, 'Média'),
('Pizza Pepperoni', 2, 30.00, 'Grande'),
('Pizza Frutos do Mar', 3, 40.00, 'Grande'),
('Pizza Quatro Queijos', 4, 35.00, 'Média'),
('Pizza Calabresa', 2, 28.00, 'Pequena'),
('Pizza Vegetariana Especial', 1, 32.00, 'Grande'),
('Pizza Camarão', 3, 45.00, 'Média'),
('Pizza Especiais da Casa', 5, 50.00, 'Grande');

select *from tb_pizzas;

select * from tb_categorias;

select * from tb_pizzas where preco > 40;

select * from tb_pizzas where preco between 35 and 45;

select * from tb_pizzas where nome like "%M%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.id = tb_categorias.id;

select p.nome, p.preco, c.nome from tb_pizzas p inner join tb_categorias c on 
p.categoria_id = c.id where p.tamanho = "Grande";

-- Deletar vários de uma vez 
delete from tb_pizzas where id in (10,11,12,13,14,15,16);