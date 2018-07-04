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

