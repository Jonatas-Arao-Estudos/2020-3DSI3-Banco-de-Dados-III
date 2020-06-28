create database teste_stored;
use teste_stored;

create table tb_clientes (
cd_cliente int not null primary key auto_increment,
nm_cliente varchar(80) not null,
ds_ocupacao_cliente varchar(60) not null,
vl_rendimentos_cliente double not null,
sg_sexo_cliente varchar(1) not null);

insert into tb_clientes (nm_cliente, ds_ocupacao_cliente, vl_rendimentos_cliente, sg_sexo_cliente) values 
('Robson', 'Técnico de Enfermagem', 3250.00, 'M'),
('Gepeto', 'Carpinteiro', 1800.00, 'M'),
('Cleusa', 'Enfermeira', 5000.00, 'F'),
('Mario', 'Montador de móveis', 1600.00, 'M'),
('Ana', 'Professora', 4500.00, 'F'),
('João', 'Promotor', 22500.00, 'M'),
('Caio', 'Técnico de radiologia', 3800.00, 'M'),
('Silvana', 'Escrivã', 4500.00, 'F');

Create procedure buscarcliente (codigo int)
Select nm_cliente as 'Nome', ds_ocupacao_cliente as 'Ocupação', 
vl_rendimentos_cliente as 'Rendimentos mensais', sg_sexo_cliente as 'Sexo'
From tb_clientes
where cd_cliente = codigo;

Call buscarcliente(3);