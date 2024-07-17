create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment primary key,
nome varchar(255),
telefone varchar(255) not null,
responsavel varchar(255) not null,
turma varchar(255),
nota decimal
);

alter table tb_estudantes modify nota decimal(2,1);

select * from tb_estudantes;

insert into tb_estudantes(nome, telefone, responsavel, turma, nota) values
("João", "1234-567", "Regiana Mãe", "4B", 7.8),
("Maria", "5698-123", "Pedro Pai", "4B", 8.0),
("Fernanda", "1234-567", "Joana Mãe", "2B", 7.2),
("Gabriel", "1234-567", "Regiana Mãe", "4B", 7.8),
("Claudio", "1234-567", "José Pai", "3A", 6.2),
("Cecilia", "1234-567", "Marcelo Pai", "3A", 6.0),
("Hugo", "1234-567", "Gisele Mãe", "2A", 9.3),
("Arthur", "1234-567", "Ana Mãe", "1A", 6.9);

select * from tb_estudantes where nota > 7.0;

 select * from tb_estudantes where nota < 7.0;
 
 update tb_estudantes set telefone = "3989-6701" where id = 5;





