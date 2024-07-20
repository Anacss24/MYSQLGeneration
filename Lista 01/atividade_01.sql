create database db_funcionarios;
use db_funcionarios;

create table tb_colaboradores(
id_colaborador bigint auto_increment primary key,
nome varchar(255) not null,
salario decimal not null,
setor varchar(255),
ramal int 
);

describe tb_colaboradores;

alter table tb_colaboradores modify salario decimal(6,2);

insert into tb_colaboradores (nome, salario, setor, ramal) values
("Maria", "4500.69", "Gerente", 2356),
("Pedro", "1500.50", "Vendedor", 2358),
("João", "1900.99", "Supervisor", 2360),
("Carlos", "1800.00", "Vendedor", 2362),
("Karol", "1300.78", "Auxiliar", 2364);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome = "Jade" where id_colaborador = 1;