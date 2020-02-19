USE misterlanches;

/* 1 - Todos os registros da tabela cliente */

SELECT * FROM tb_clientes;

/* 2 - Todos os clientes que possuam a letra "n" em algum lugar do nome */

SELECT * FROM tb_clientes WHERE nm_cliente LIKE "%n%";

/* 3 - Todos os lanches terminados com a letra "e" */

SELECT * FROM tb_lanches WHERE nm_lanche LIKE "%e";

/* 4 - Todas as bebidas que custem menos de 7,00 */

SELECT * FROM tb_bebidas WHERE vl_preco < 7; 

/* 5 - Todas as bebidas que custem mais de 5,00 e menos de 10,00 */

SELECT * FROM tb_bebidas WHERE vl_preco > 5 && vl_preco < 10;

/* 6 - Todos os lanches que custem menos de 10,00 */

SELECT * FROM tb_lanches WHERE vl_preco < 10;

/* 7 - Todos os clientes que tenham a letra "a" no nome e cujo a data de nascimento seja superior a 01/01/2000 */

SELECT * FROM tb_clientes WHERE nm_cliente LIKE "%a%" && dt_nascimento > "2000-01-01";

/* 8 - Todos os lanches com batatas como acompanhamento e que possuam a frango em sua descrição */

SELECT * FROM tb_lanches WHERE ds_acompanhamentos LIKE "%batatas%" && ds_lanche LIKE "%frango%";

/* 9 - Todos os lanches com queijo na descrição e cujo preço custe entre 12,00 e 16,00 */

SELECT * FROM tb_lanches WHERE ds_lanche LIKE '%queijo%' && vl_preco BETWEEN 12 AND 16;

/* 10 - Todas as bebidas cujo a letra inicial seja "S" e cujo valor seja inferior a 6,00 */

SELECT * FROM tb_bebidas WHERE nm_bebida LIKE 'S%' && vl_preco < 6;

/* 11 - Todos os clientes cujo a letra inicial seja "A" e a letra final do nome seja "O" */

SELECT * FROM tb_clientes WHERE nm_cliente LIKE 'A%' && nm_cliente LIKE '%O';

/* 12 - Todos os lanches cujo a letra inicial seja "S", possuam frango na descrição e cujo preço seja maior que 12,00 */

SELECT * FROM tb_lanches WHERE nm_lanche LIKE 'S%' && ds_lanche LIKE '%frango%' && vl_preco > 12;

/* 13 - Todas as bebidas que possuam letra "o" no nome e cujo preço seja superior e 5,00 e inferior a 10,00 */

SELECT * FROM tb_bebidas WHERE nm_bebida LIKE '%o%' && vl_preco > 5 && vl_preco < 10;

/* 14 - Todos os lanches cujo o valor seja maior que 6,00 e inferior a 12,00 e cujo a descrição possua a palavra "tomate" */

SELECT * FROM tb_lanches WHERE vl_preco > 6 && vl_preco < 12 && ds_lanche LIKE '%tomate%';

/* 15 - Todas as bebidas cujo preço seja inferior a 5,50 */

SELECT * FROM tb_bebidas WHERE vl_preco < 5.5;

/* 16 - Liste todos os clientes em ordem alfabetica. */

SELECT * FROM tb_clientes ORDER BY nm_cliente ASC;

/* 17 - Liste todos os lanches que possuam queijo em ordem decrescente de valor. */

SELECT * FROM tb_lanches WHERE ds_lanche LIKE '%queijo%' ORDER BY nm_lanche DESC;

/* 18 - Liste todas as bebidas que custem mais de 6,50 em ordem alfabetica. */

SELECT * FROM tb_lanches WHERE vl_preco > 6.5 ORDER BY nm_lanche ASC;

/* 19 - Liste todos os clientes cujo o nome comece com a letra "D". */

SELECT * FROM tb_clientes WHERE nm_cliente LIKE 'D%';

/* 20 - Liste todos os lanches em ordem alfabética.*/

SELECT * FROM tb_lanches ORDER BY nm_lanche ASC;