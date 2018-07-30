-- crud (Create Read Update Delete)
use dbinfox;
-- inspencionar tabelas no banco de dados 
show tables;
-- o codigo abaixo cria uma tabela 
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) not null,
login varchar (50) not null unique,
senha varchar(50) not null,
perfil varchar(50) not null
);
-- descrevendo a tabela describe 
describe tb_usuarios;
-- inserindo dados na tabela (crud - Create)
insert into tb_usuarios values 
(1, 'Paulo Vitor santos Figueiredo','1111-1111','paulo.vFigueiredo','123@paulo','Aluno do Senac');
insert into tb_usuarios values
(2, 'Lucas', '2222-2222','lucas.oliveira','123@lucas','Professor do Senac');
insert into tb_usuarios values
(3, 'Sabrina', '3333-3333', 'sabrina.Silva','123@sabrina','Aluna do Senac');
select * from tb_usuarios;
















use dbinfox;
-- inspencionar tabelas no banco de dados 
show tables;
-- o codigo abaixo cria uma tabela 
create table tb_cliente(
idcli int auto_increment primary key,
cpfcli varchar (50) unique ,
nomecli varchar (50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (50) not null, 
complemento varchar (15),
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char(2) not null,
fone1 varchar(15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);
describe tb_cliente;
-- inserindo dados na tabela (crud - Create)
insert into tb_cliente values 
(1,'123.432.234-00','Ronaldo Castro', '54672-76', 'Rua', 'Canápolis', '33', '','Morumbi', 'São Paulo','SP', '2983-4357', '', 'ronaldo.castor@gmail.com');
select * from tb_cliente;
delete from tb_cliente where idcli=1;

drop table tb_cliente;

insert into tb_cliente values 
(null,'234.4562.264-08','Pedro Carvalho', '24075-16', 'Rua', 'Capitão Silveria', '143', '','Vila Matilde', 'São Paulo','SP', '2984-8927', '', 'pedro.@gmail.com');

insert into tb_cliente values 
(null,'258.4598.261-05','Amanda Garden', '12074-12', 'Rua', 'Professor Cássio', '345', '','Vila Maria', 'São Paulo','SP', '2889-3487', '', 'Amanda.@gmail.com');

insert into tb_cliente values 
(null,'231.4697.291-09','João Renaldi', '12275-03', 'Rua', 'Fernando Pessoa', '785', '','Vila Sabrina', 'São Paulo','SP', '2589-4497', '', 'joao.@gmail.com');

insert into tb_cliente values 
(null,'635.4661.231-06','Juarez Loteno', '15094-07', 'Rua', 'Lorena', '745', '','Vila Galvão', 'São Paulo','SP', '2789-5467', '', 'juarez.@gmail.com');

insert into tb_cliente values 
(null,'623.4332.471-97','Vilma Lorteno', '12397-09', 'Rua', 'Lautenia', '732', '','Vila Faldena', 'São Paulo','SP', '2476-3468', '', 'vilma.@gmail.com');

use dbinfox;

show tables;

create table tb_os(
idos int auto_increment primary key,
data_os timestamp default current_timestamp,
tipos varchar (15) not null,
situacao varchar (20) not null,
equipamento varchar (200) not null,
defeito varchar (200) not null,
servico varchar (200) not null, 
tecnico varchar (200),
valor decimal (10,2) not null
);

alter table tb_os auto_increment = 10000;
drop table tb_os;
describe tb_os;

alter table  tb_os drop column idcli;
alter table tb_os add idcli int;
alter table  tb_os add constraint cliente_os
foreign key (idcli)
references tb_cliente(idcli) 
on delete no action;

insert into tb_os(tipos,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('Conserto','Aprovado','Notebook LG','Travando','Troca de RAM','Pedro',200,2);

select * from tb_os;

insert into tb_os(tipos,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('Orçamento','Aprovado','PC','Não liga','Troca de fonte','Pedro',130,3);

select * from tb_os;

insert into tb_os(tipos,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('Orçamento','Negado','PC','Vírus',' Formatação','Pedro',120,4);

select * from tb_os;


select 
O.idos as OS,tipos as Tipo,situacao as situacao,equipamento as Equipamento,defeito as Defeito,servico as Servico,tecnico as Tecnico,valor as Valor,C.nomecli as Nome, fone1 as Fone, emailcli as Email,data_os as Data
 from tb_os as O 
 inner join tb_cliente as C on (O.idcli = C.idcli);