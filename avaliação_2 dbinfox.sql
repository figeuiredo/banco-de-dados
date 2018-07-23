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
idcli int primary key,
cpfcli varchar (50) unique ,
nomecli varchar (50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (50) not null, 
complemento varchar (15),
bairro varchar (50) not null,
cidade varchar (50) not null,
uf varchar (50) not null,
fone1 varchar(15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);
describe tb_cliente;
-- inserindo dados na tabela (crud - Create)
insert into tb_cliente values 
(1,'123.432.234-00','Ronaldo Castro', '54672-76', 'Rua', 'Canápolis', '33', '','Morumbi', 'São Paulo','SP', '2983-4357', '', 'ronaldo.castor@gmail.com');
select * from tb_cliente;
