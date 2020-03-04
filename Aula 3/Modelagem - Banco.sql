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
    
Insert into estoque_superinfo values (null, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(null, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(null, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(null, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(null, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00);

Insert into estoque_megainformatica values (null, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(null, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(null, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(null, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(null, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00),
(null, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(null, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(null, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(null, 'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda geração', 780.00),
(null, 'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira geração', 1050.00),
(null, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00);

Insert into estoque_lojaqueexplode values (null, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(null, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(null, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(null, 'AMD Ryzen 5 2600', 'AMD', 'Processador AMD linha Ryzen segunda geração', 780.00),
(null, 'AMD Ryzen 5 3600', 'AMD', 'Processador AMD linha Ryzen terceira geração', 1050.00),
(null, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00);

Insert into estoque_pikachuinformatica values (null, 'Intel Core i3 9100f', 'Intel', 'Processador Intel nona geração', 450.00),
(null, 'Intel core i3 8100', 'Intel', 'Processador Intel oitava geração', 500.00),
(null, 'Intel core i5 9400f', 'Intel', 'Processador Intel nona geração', 700.00),
(null, 'Intel core i7 8700k', 'Intel', 'Processador Intel oitava geração', 1500.00),
(null, 'Intel core i7 9700k', 'Intel', 'Processador Intel nona geração', 1800.00),
(null, 'AMD Ryzen 3 3200g', 'AMD', 'Processador AMD com vídeo integrado', 550.00),
(null, 'AMD Ryzen 2 2200g', 'AMD', 'Processador AMD com vídeo integrado', 450.00),
(null, 'AMD Ryzen 5 3500X', 'AMD', 'Processador AMD linha Ryzen terceira geração', 850.00),
(null, 'AMD Ryzen 7 2700X', 'AMD', 'Processador AMD linha Ryzen segunda geração', 1000.00),
(null, 'Notebook HP Pavillion', 'HP', 'Notebook Core I7 7700HQ, 12gb de RAM DDR4, HDD 1tb, SSD 120gb', 3000.00),
(null, 'Notebook HP Omen', 'HP', 'Notebook Core I7 9850K, 16gb de RAM DDR4, HDD 2tb, SSD 480gb, Nvdia RTX2060', 6000.00),
(null, 'Notebook ASUS Zenbook', 'ASUS', 'Ultrabook Core I7 9750H, 16gb de RAM DDR4, SSD 1tb, Nvdia MX250', 4800.00);