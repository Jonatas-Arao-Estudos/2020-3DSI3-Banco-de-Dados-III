create database aulaMerge;
use aulaMerge;

create table proprietario (
id_proprietario int primary key auto_increment,
nm_proprietario varchar(70)  not null UNIQUE,
nm_sobrenome_proprietario varchar(70)  not null);

create table props (
id_props int primary key auto_increment,
nm_props varchar(70) not null,
nm_sobrenome_props varchar(70) not null);

create table donos (
id_donos int primary key auto_increment,
nm_donos varchar(70) not null,
nm_sobrenome_donos varchar(70) not null);

create table veiculo (
id_veiculo int not null primary key auto_increment,
nm_marca varchar(40) not null,
nm_modelo varchar(40) not null,
cd_proprietario int not null,
foreign key (cd_proprietario) references proprietario(id_proprietario));

insert into proprietario (nm_proprietario, nm_sobrenome_proprietario) values 
('John', 'Cena'),
('Edson', 'Arantes do Nascimento'),
('Cristiano', 'Ronaldo'),
('Ednaldo', 'Pereira');

insert into veiculo (nm_marca, nm_modelo, cd_proprietario) values 
('Volkswagen', 'Passat CC', 1),
('Chevrolet', 'Cobalt', 2),
('Fiat', 'Mobi', 3),
('Maserati', 'GranCabrio', 4);

Select id_proprietario as 'Código', nm_proprietario as 'Nome', nm_sobrenome_proprietario as 'Sobrenome' from proprietario;

Select id_proprietario, concat(nm_proprietario, ' ', nm_sobrenome_proprietario) as 'Nome completo' from proprietario;

insert into props (nm_props, nm_sobrenome_props) values 
('Kyle', 'Reese'),
('Lionel', 'Messi'),
('Neymar', 'Junior'),
('João', 'Silva');

Select id_proprietario as 'Código', nm_proprietario as 'Nome', nm_sobrenome_proprietario as 'Sobrenome' from proprietario;

Select id_props as 'Código', nm_props as 'Nome', nm_sobrenome_props as 'Sobrenome' from props;

Insert into proprietario (nm_proprietario, nm_sobrenome_proprietario) select nm_props, nm_sobrenome_props from props;

insert into donos (nm_donos, nm_sobrenome_donos) values 
('Sérgio', 'Chulapa'),
('Anderson', 'Silva'),
('Mike', 'Tyson'),
('Vanderlei', 'Silva'),
('José', 'Silva'),
('John', 'Cena'); 

-- ATIVIDADE --
-- PESQUISE SE HÁ ALGUMA MANEIRA DE REALIZAR UM MERGE ENTRE TABELAS DESCONSIDERANDO REGISTROS IGUAIS, SE HOUVER EMPREGUE ESTA FERRAMENTA PARA UNIR AS TABELAS PROPRIETARIO E DONOS.
