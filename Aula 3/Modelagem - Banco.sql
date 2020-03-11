create database banco;

use banco;

create table estoque_superinfo (
	id_produto int not null auto_increment primary key,
    nm_produto varchar(60) not null,
    nm_fabricante varchar(60) not null,
    ds_produto longtext,
    vl_produto double not null);
    
create table estoque_megainformatica (
	id_produto int not null auto_increment primary key,
    nm_produto varchar(60) not null,
    nm_fabricante varchar(60) not null,
    ds_produto longtext,
    vl_produto double not null);
    
create table estoque_lojaqueexplode (
	id_produto int not null auto_increment primary key,
    nm_produto varchar(60) not null,
    nm_fabricante varchar(60) not null,
    ds_produto longtext,
    vl_produto double not null);
    
create table estoque_pikachuinformatica (
	id_produto int not null auto_increment primary key,
    nm_produto varchar(60) not null,
    nm_fabricante varchar(60) not null,
    ds_produto longtext,
    vl_produto double not null);
    
Insert into estoque_superinfo values (1, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(2, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(3, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(4, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(5, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00);

Insert into estoque_megainformatica values (1, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(2, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(3, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(4, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(5, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00),
(6, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(7, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(8, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(9, 'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda geração', 780.00),
(10, 'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira geração', 1050.00),
(11, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00);

Insert into estoque_lojaqueexplode values (6, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(7, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(8, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(9, 'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda geração', 780.00),
(10, 'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira geração', 1050.00),
(11, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00);

Insert into estoque_pikachuinformatica values (1, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(2, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(3, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(4, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(5, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00),
(6, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(7, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(8, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(11, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00),
(12, 'Notebook HP Pavillion', 'HP', 'Notebook Core I7 7700HQ, 12gb de RAM DDR4, HDD 1tb, SSD 120gb', 3000.00),
(13, 'Notebook HP Omen', 'HP', 'Notebook Core I7 9850K, 16gb de RAM DDR4, HDD 2tb, SSD 480gb, Nvdia RTX2060', 6000.00),
(14, 'Notebook ASUS Zenbook', 'ASUS', 'Ultrabook Core I7 9750H, 16gb de RAM DDR4, SSD 1tb, Nvdia MX250', 4800.00);