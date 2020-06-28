USE banco_loja;

/* 1. Crie uma função capaz de calcular o valor de cinco unidades de um
mesmo produto, em seguida teste esta função utilizando o produto
caderno de 50 folhas (cujo código no banco de dados é 16). */
CREATE FUNCTION calculo_total_pedido (preco DOUBLE, quantidade INT)
RETURNS DOUBLE RETURN preco * quantidade;

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	calculo_total_pedido(vl_produto, 5) 'Valor - 5 Un.'
FROM
	produtos
WHERE
	cd_produto = 16
;

/* 2. Crie uma função para calcular o valor de três produtos da base de
dados, em seguida teste a função utilizando três produtos diferentes de
sua escolha. */
CREATE FUNCTION calculo_valor_tres_produtos (vl1 DOUBLE, vl2 DOUBLE, vl3 DOUBLE)
RETURNS DOUBLE RETURN vl1 + vl2 + vl3;

SELECT
	calculo_valor_tres_produtos (vl1.vl_produto, vl2.vl_produto, vl3.vl_produto) 'Soma - Produtos 9, 5 e 2'
FROM
	(SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 9
    ) vl1,
    (SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 5
    ) vl2,
    (SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 2
    ) vl3
;    

/* 3. Crie uma função que calcule o valor de dez unidades de um mesmo
produto e em seguida aplique um desconto de 5% nesse total. Para
testar a função utilize 10 produtos de sua escolha. */
CREATE FUNCTION calculo_total_pedido_desconto (preco DOUBLE, quantidade INT, desconto DOUBLE)
RETURNS DOUBLE RETURN (preco * quantidade) * ( 1 - (desconto / 100) );

SELECT 
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	calculo_total_pedido_desconto(vl_produto, 10, 5) 'Valor - 10 Un. - 5% Desconto'
FROM
	produtos
LIMIT 10;

/* 4. Crie uma função que calcule a média de 4 produtos selecionados pelo
usuário, em seguida teste-a. */
CREATE FUNCTION calculo_media_quatro_produtos (vl1 DOUBLE, vl2 DOUBLE, vl3 DOUBLE, vl4 DOUBLE)
RETURNS DOUBLE RETURN (vl1 + vl2 + vl3 + vl4) / 4;

SELECT
	calculo_media_quatro_produtos (vl1.vl_produto, vl2.vl_produto, vl3.vl_produto, vl4.vl_produto) 'Soma - Produtos 10, 13, 15, 17'
FROM
	(SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 10
    ) vl1,
    (SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 13
    ) vl2,
    (SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 15
    ) vl3,
    (SELECT
		vl_produto
	 FROM
		produtos
	 WHERE
		cd_produto = 17
    ) vl4
;  

/* 5. Crie uma função que calcule o valor da quantidade de um produto
qualquer e aplique um desconto de 5% sobre o subtotal. Teste esta
função. */
CREATE FUNCTION calculo_total_pedido_desconto (preco DOUBLE, quantidade INT, desconto DOUBLE)
RETURNS DOUBLE RETURN (preco * quantidade) * ( 1 - (desconto / 100) );

SELECT 
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	calculo_total_pedido_desconto(vl_produto, 5, 5) 'Valor - 5 Un. - 5% Desconto'
FROM
	produtos
;

/* 6. Crie uma função que exiba todos os produtos cadastrados com um
desconto de 10%. É necessário que a função retorne o código do
produto, o nome, o valor sem o desconto e o valor com o desconto. */
CREATE FUNCTION calculo_total_pedido_desconto (preco DOUBLE, quantidade INT, desconto DOUBLE)
RETURNS DOUBLE RETURN (preco * quantidade) * ( 1 - (desconto / 100) );

SELECT 
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	calculo_total_pedido_desconto(vl_produto, 1, 10) 'Valor - 1 Un. - 10% Desconto'
FROM
	produtos
;