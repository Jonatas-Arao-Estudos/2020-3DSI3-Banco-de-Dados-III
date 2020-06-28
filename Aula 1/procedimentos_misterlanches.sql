USE misterlanches;

INSERT INTO tb_pedidos(cd_pedido, ds_observacao, dt_pedido, id_cliente) VALUES
('PD001','A cliente Maria Silva comprou um Misto Quente e um suco Del Valle no dia 01/04/2019',20190401,'CL001'),
('PD002','O cliente Jeremias comprou dois sucos naturais no dia 01/04/2019',20190401,'CL002'),
('PD003','O cliente Jeremias comprou um especial da casa e uma cerveja no dia 03/04/2019',20190403,'CL002'),
('PD004','O cliente Wellington Orelhana comprou duas cervejas e dois especiais do Boça no dia 03/04/2019',20190403,'CL004');

INSERT INTO tb_pedido_lanche(id_pedido, id_lanche, qt_pedido_lanche) VALUES
('PD001','ML001',1),
('PD003','ML010',1),
('PD004','ML009',2);

INSERT INTO tb_pedido_bebida(id_pedido, id_bebida, qt_pedido_bebida) VALUES
('PD001','ML011',1),
('PD002','ML012',2),
('PD003','ML015',1),
('PD004','ML015',2);

SELECT * FROM tb_pedidos PD
INNER JOIN
tb_pedido_bebida PB ON (PB.id_pedido = PD.cd_pedido)
INNER JOIN
tb_bebidas BE ON (BE.cd_bebida = PB.id_bebida);

SELECT * FROM tb_pedidos PD
INNER JOIN
tb_pedido_lanche PB ON (PB.id_pedido = PD.cd_pedido)
INNER JOIN
tb_lanches BE ON (BE.cd_lanche = PB.id_lanche);