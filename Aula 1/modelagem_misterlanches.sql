CREATE DATABASE misterlanches;
USE misterlanches;

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
    vl_preco DECIMAL(10,2)
);

CREATE TABLE tb_pedido_lanche(
	id_pedido CHAR(5) NOT NULL,
    id_lanche CHAR(5) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(cd_pedido),
    FOREIGN KEY (id_lanche) REFERENCES tb_lanches(cd_lanche)
);

CREATE TABLE tb_bebidas(
	cd_bebida CHAR(5) NOT NULL PRIMARY KEY,
    nm_bebida VARCHAR(128) NOT NULL,
    ds_bebida VARCHAR(128) NOT NULL,
    ds_tipo VARCHAR(128) NOT NULL,
    vl_preco DECIMAL(10,2)
);

CREATE TABLE tb_pedido_bebida(
	id_pedido CHAR(5) NOT NULL,
    id_bebida CHAR(5) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(cd_pedido),
    FOREIGN KEY (id_bebida) REFERENCES tb_bebidas(cd_bebida)
)