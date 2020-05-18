USE banco_loja;

/* 
1. Crie  uma  função  que  calcule  o  valor  de  um  conjunto  de  produtos
(6 produtos  com  5%  de  desconto) e de  um  lote  de  produtos
(12  produtos com 10% de desconto). Ao chamar a função exiba o nome do produto,
o valor unitário, o valor do conjunto e o valor do lote.
*/

CREATE FUNCTION calculo_valor_conjunto (preco double, quantidade integer, desconto double)
RETURNS DOUBLE RETURN (preco * quantidade) * (1 - (desconto/100));

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	ROUND(calculo_valor_conjunto(vl_produto,6,5),2) 'Valor - 6 Un - 5% OFF',
    ROUND(calculo_valor_conjunto(vl_produto,12,10),2) 'Valor - 12 Un - 10% OFF'
FROM
	produtos
;

/*
2. O lucro de um produto corresponde a 50% do preço final de um produto.
Crie uma função que calcule o lucro de um produto indicado e em seguida a execute.
*/

CREATE FUNCTION calculo_valor_lucro (preco double, desconto double)
RETURNS DOUBLE RETURN (preco * (1 + desconto/100)) * 0.5;

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	ROUND(calculo_valor_lucro(vl_produto, 0),2) 'Valor do Lucro'
FROM
	produtos
;

/*
3. Crie uma função que calcule o lucro de um conjunto de produtos e de um lote de produtos,
lembrando que o lucro corresponde a 50% do preço final sem desconto de um produto.
Em seguida execute esta função.
*/

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	ROUND(calculo_valor_lucro(calculo_valor_conjunto(vl_produto,6,5), 5),2) 'Valor do Lucro do Conjunto',
	ROUND(calculo_valor_lucro(calculo_valor_conjunto(vl_produto,12,10), 10),2) 'Valor do Lucro do Lote'
FROM
	produtos
;

/*
4. Crie uma função que calcule o preço de um produto com um acréscimo de 4%
em seguida exiba o resultado desta função.
*/

CREATE FUNCTION calculo_valor_acrecimo (preco double, acrescimo double)
RETURNS DOUBLE RETURN preco * (1 + acrescimo/100);

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	ROUND(calculo_valor_acrecimo(vl_produto, 4),2) 'Com acrécimo de 4%'
FROM
	produtos
;

/*
5. Adotando a cotação do dólar como 5,50 crie uma função que exiba o valor de um produto em dólares.
Em seguida exiba o resultado.
*/

CREATE FUNCTION calculo_cambio(preco double, cotacao double)
RETURNS DOUBLE RETURN preco * cotacao;

SELECT
	cd_produto 'Código',
    nm_produto 'Nome',
    vl_produto 'Valor',
	ROUND(calculo_cambio(vl_produto, 5.5),2) 'Em Dólares'
FROM
	produtos
;

/*
Professor, eu aprecio o otimismo que o senhor teve na elaboração do exercício,
mas o dólar hoje está R$ 5,85
*/