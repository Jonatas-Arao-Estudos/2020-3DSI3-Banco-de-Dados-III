create database AulaBDIII;
use AulaBDIII;

create table tb_pizzas (
cd_pizza int not null auto_increment primary key,
nm_sabor_pizza varchar(60) not null,
vl_preco_pizza double not null);

create table tb_pedido (
cd_pedido int not null auto_increment primary key,
ds_pedido varchar(100));

create table tb_pizza_pedido (
cd_pizza_pedido int not null auto_increment primary key,
qt_pizza int not null,
id_pizza int not null,
id_pedido int not null,
FOREIGN KEY (id_pizza) references tb_pizzas(cd_pizza),
FOREIGN KEY (id_pedido) references tb_pedido(cd_pedido));

insert into tb_pizzas (nm_sabor_pizza, vl_preco_pizza) values 
('Mozzarella', 10.00),
('Três queijos', 10.00),
('Frango com Catupiry', 10.00),
('Atum', 10.00),
('Brocólis com queijo', 10.00);

insert into tb_pedido (ds_pedido) values
('Entregar na casa da Maria'),
('Pizza sem azeitonas, entregar na casa do João'),
('Pizza de Mozzarella sem molho');

insert into tb_pizza_pedido (qt_pizza, id_pizza, id_pedido) values 
(3, 1, 1), -- 3 pizzas de mozzarella para o pedido 1
(1, 3, 1), -- 1 pizza de Frango com catupiry para o pedido 1
(1, 2, 2), -- 1 pizza de três queijos para o pedido 2
(1, 1, 3), -- 1 pizza de mozzarella para o pedido 3
(3, 4, 3), -- 3 pizzas de Atum para o pedido 3
(1, 5, 3);  -- 1 pizza de Brocólis com queijo para o pedido 3

/*
create function calcular_taxa_entrega(vl_pedido double, vl_taxa double) returns double return vl_pedido + vl_taxa;

select nm_sabor_pizza as 'Pizza', calcular_taxa_entrega(vl_preco_pizza, 5.00) as 'Valor pizza com entrega', 
vl_preco_pizza as 'Valor pizza sem entrega' from tb_pizzas where cd_pizza = 1;



create function calcular_pedido(vl_pizza double, qt_pizza int) returns double return vl_pizza * qt_pizza;

select ped.cd_pedido as 'Código do pedido', calcular_pedido(10.00, pp.qt_pizza) as 'Valor do Pedido', ped.ds_pedido as 'Descrição' 
from tb_pedido ped, tb_pizza_pedido pp where pp.id_pedido = ped.cd_pedido and ped.cd_pedido = 1;
*/