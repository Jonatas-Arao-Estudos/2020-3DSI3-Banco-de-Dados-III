create database banco_loja;
use banco_loja;

create table produtos (
cd_produto int not null primary key auto_increment,
nm_produto varchar(60) not null,
vl_produto double not null);

insert into produtos (nm_produto, vl_produto) values ('Caneta Bic preta', 1.00),
('Caneta Bic azul', 1.00),
('Caneta Bic vermelha', 1.00),
('Caneta Bic verde', 1.00),
('Caixa de lápis preto, 12und', 4.00),
('Caixa de lápis preto 6B, 3und', 6.00),
('Caixa de lápis preto 24und', 6.00),
('Caixa de lápis colorido 12und', 4.50),
('Caixa de lápis colorido 24und', 6.00),
('Caixa de lápis colorido 48und', 10.00),
('Caneta marcador azul', 4.00),
('Caneta marcador preta', 4.00),
('Caneta marcador vermelha', 4.00),
('Borracha', 0.50),
('Apontador', 0.75),
('Caderno 50 folhas', 3.00),
('Caderno 100 folhas', 5.00);