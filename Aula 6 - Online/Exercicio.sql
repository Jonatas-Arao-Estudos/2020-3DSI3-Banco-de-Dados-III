USE aulabdiii;

-- As funções resolvem os 3 exercícios
CREATE FUNCTION calcular_preco_produto(valor double, quantidade int)
RETURNS DOUBLE RETURN valor * quantidade;

CREATE FUNCTION calcular_pedido(valorTotal double, taxaCartao double, taxaEntrega double)
RETURNS DOUBLE RETURN valorTotal * (1 + taxaCartao/100) + taxaEntrega;

/*
1 - Crie  uma  função  capaz  de  calcular  o  valor  dos  pedidos  da Pizzaria.
*/

SELECT
	PD.cd_pedido 'Código do Pedido',
    calcular_pedido(SUM(calcular_preco_produto(PZ.vl_preco_pizza, PP.qt_pizza)),0,0) 'Valor do Pedido',
    PD.ds_pedido 'Descrição do Pedido'
FROM
	tb_pedido PD
    INNER JOIN
    tb_pizza_pedido PP ON(PD.cd_pedido = PP.id_pedido)
    INNER JOIN
    tb_pizzas PZ ON(PP.id_pizza = PZ.cd_pizza)
GROUP BY PD.cd_pedido
;

/*
2 - Crie  uma função  que  calcule  o  preço do  pedido  acrescido  da taxa de cartão de crédito.
A taxa de cartão de crédito é de 5%.
*/

SELECT
	PD.cd_pedido 'Código do Pedido',
    calcular_pedido(SUM(calcular_preco_produto(PZ.vl_preco_pizza, PP.qt_pizza)),5,0) 'Valor do Pedido',
    PD.ds_pedido 'Descrição do Pedido'
FROM
	tb_pedido PD
    INNER JOIN
    tb_pizza_pedido PP ON(PD.cd_pedido = PP.id_pedido)
    INNER JOIN
    tb_pizzas PZ ON(PP.id_pizza = PZ.cd_pizza)
GROUP BY PD.cd_pedido
;

/*
3 - Crie uma função capaz de calcular o valor do pedido
acrescido da taxa de cartão de crédito que corresponde a 5% do valor do pedido
e da taxa de entrega que é de 7,00.
*/

SELECT
	PD.cd_pedido 'Código do Pedido',
    calcular_pedido(SUM(calcular_preco_produto(PZ.vl_preco_pizza, PP.qt_pizza)),5,7) 'Valor do Pedido',
    PD.ds_pedido 'Descrição do Pedido'
FROM
	tb_pedido PD
    INNER JOIN
    tb_pizza_pedido PP ON(PD.cd_pedido = PP.id_pedido)
    INNER JOIN
    tb_pizzas PZ ON(PP.id_pizza = PZ.cd_pizza)
GROUP BY PD.cd_pedido
;