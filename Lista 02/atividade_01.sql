create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment primary key,
nome varchar(255) not null,
descricao varchar(500)
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
quantidade int,
preco decimal(8,2),
categoriaid bigint
);

-- Adicionar a chave estrangeira 
alter table tb_produtos add constraint fk_produtos_categorias foreign key(categoriaid) references tb_categorias(id);

-- Estrutura da tabela
describe tb_produtos;

show create table tb_produtos;
 
-- Inserir dados na tabela categorias
insert into tb_categorias(nome, descricao) values
('Analgésicos', 'Medicamentos para alívio da dor.'),
('Antibióticos', 'Medicamentos para tratar infecções bacterianas.'),
('Vitaminas e Suplementos', 'Suplementos vitamínicos e minerais para diversas necessidades.'),
('Medicamentos Pediátricos', 'Medicamentos específicos para crianças.'),
('Anti-inflamatórios', 'Medicamentos para tratar inflamações.');

-- Dados inseridos na tabela 
select * from tb_categorias;

-- Inserir dados na tabela produtos
INSERT INTO tb_produtos (nome, quantidade, preco, categoriaid) VALUES
('Paracetamol', 100, 5.50, 1),
('Amoxicilina', 50, 15.00, 2),
('Vitamina C', 200, 8.75, 3),
('Xarope Infantil', 75, 12.40,4),
('Ibuprofeno', 150, 10.30, 5),
('Dipirona', 120, 6.80, 1),
('Azitromicina', 60, 20.00, 2),
('Ômega 3', 90, 25.50,3);

select * from tb_produtos;

select * from tb_produtos where preco > 10;

select * from tb_produtos where preco between 5 and 10;
 
 -- Possui em todos os produtos com a letra C
select * from tb_produtos where nome like "%C%";

-- INNER JOIN
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id;

-- Alterar o nome de uma coluna
alter table tb_produtos change column nome nome_produto varchar(255);

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid where tb_categorias.nome = 'Antibióticos';
