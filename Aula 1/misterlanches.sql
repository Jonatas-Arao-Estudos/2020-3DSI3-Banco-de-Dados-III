CREATE DATABASE misterlanches;
use misterlanches;

CREATE TABLE tb_clientes(
	cd_cliente CHAR(5) NOT NULL PRIMARY KEY, 
    cd_cpf CHAR(11) NOT NULL,
    nm_cliente VARCHAR(128) NOT NULL,
    dt_nascimento DATE NOT NULL,
    ds_endereco VARCHAR(128) NOT NULL
);

CREATE TABLE tb_pedidos(
	cd_pedido CHAR(5) NOT NULL PRIMARY KEY,
    ds_observacao VARCHAR(128),
    dt_pedido DATE NOT NULL,
    id_cliente CHAR(5) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES tb_clientes(cd_cliente)
);

CREATE TABLE tb_lanches(
	cd_lanche CHAR(5) NOT NULL PRIMARY KEY,
    nm_lanche VARCHAR(128) NOT NULL,
    ds_lanche VARCHAR(128) NOT NULL,
    ds_acompanhamentos VARCHAR(128),
    vl_preco DECIMAL(10,2),
    id_pedido CHAR(5),
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(cd_pedido)
);

CREATE TABLE tb_bebidas(
	cd_bebida CHAR(5) NOT NULL PRIMARY KEY,
    nm_bebida VARCHAR(128) NOT NULL,
    ds_bebida VARCHAR(128) NOT NULL,
    ds_tipo VARCHAR(128) NOT NULL,
    vl_bebida DECIMAL(10,2),
    id_pedido CHAR(5),
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(cd_pedido)
)