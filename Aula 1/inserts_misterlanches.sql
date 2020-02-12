USE misterlanches;

INSERT INTO tb_lanches(cd_lanche, nm_lanche, ds_lanche, ds_acompanhamentos, vl_preco) VALUES
('ML001','Misto Quente','Lanche com pão, queijo e presunto',null,5),
('ML002','Queijo quente','Lanche com três tipos de queijo derretidos',null,6.5),
('ML003','Hambúrguer simples','Pão, hambúrguer, alface e tomate','Batatas',7),
('ML004','Hambúrguer de queijo','Pão, hambúrguer, queijo, alface e tomate','Batatas',8),
('ML005','Hambúrguer duplo','Pão, dois hambúrgueres, queijo, alface e tomate','Batatas',10),
('ML006','Hambúrguer duplo com cheddar','Pão, dois hambúrgueres, cheddar, alface e tomate','Batatas',12),
('ML007','Vegano','Pão, hambúrguer de soja, alface e tomate','Batatas',12),
('ML008','Super de frango','Pão, steak de frango, queijo alface e tomate','Batatas',12),
('ML009','Especial do Boça','Pão, três hambúrgueres e tudo que há de “bom”','Batatas e outras coisas',15),
('ML010','Especial da casa','Pão, três hambúrgueres, queijo, alface e tomate','Batatas',16);

INSERT INTO tb_bebidas (cd_bebida, nm_bebida, ds_bebida, ds_tipo, vl_preco) VALUES
('ML011','Suco Del Valle','Suco de caixinha','Não alcoólica',4),
('ML012','Suco natural','Suco feito na hora','Não alcoólica',5),
('ML013','Refrigerante lata','Refrigerante 350ml','Não alcoólica',5),
('ML014','Refrigerante garrafa','Refrigerante 600ml','Não alcoólica',7.5),
('ML015','Cerveja','Cerveja estupidamente gelada','Alcoólica',9);

INSERT INTO tb_clientes (cd_cliente, cd_cpf, nm_cliente, dt_nascimento, ds_endereco) VALUES
('CL001',11011010010,'Maria Silva',20000215,'Rua Falsa, 200'),
('CL002',21021020020,'Jeremias Alberto',19800920,'Rua Não Existe, 330'),
('CL003',31031030030,'Claudio Dolly',19840510,'Rua Amiguinho, 220'),
('CL004',41041040040,'Wellington Orelhana',19000504,'Rua Forró, 120'),
('CL005',51051050050,'João da Couve',20011002,'Rua Falsa, 500')


