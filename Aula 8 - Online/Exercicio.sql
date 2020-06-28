USE teste_stored;

/*
1 - Crie um procedimento  armazenado  capaz  de  exibir  todos  os
	clientes por  sexo.  O  operador  indicará  qual  sexo (sendo “M”
    para masculino e “F” para feminino) ele deseja consultar.
*/
CREATE PROCEDURE buscarGenero (genero VARCHAR(1))
SELECT nm_cliente 'Nome',
ds_ocupacao_cliente 'Ocupação', 
vl_rendimentos_cliente 'Rendimentos Mensais',
sg_sexo_cliente 'Sexo'
FROM 
tb_clientes
WHERE 
sg_sexo_cliente = genero;

CALL buscarGenero('M');

/*
2 - Crie um procedimento capaz de calcular os rendimentos anuais
	de um cliente em específico, o código do cliente deverá ser
    informado na chamada do procedimento.
*/
CREATE PROCEDURE rendimentoAnual(codigo INT)
SELECT 
(vl_rendimentos_cliente * 12) 'Rendimento Anual'
FROM 
tb_clientes
WHERE 
cd_cliente = codigo;

CALL rendimentoAnual(3);

/* 
3 - Desenvolva um procedimento que liste todos os clientes que
	possuam determinada letra em seu nome. Por exemplo, se na
    chamada do procedimento for escolhida a letra “A” o
    procedimento em questão deverá listar todos os clientes que 
    possuam a letra “A” em qualquer parte de seu nome.
*/
CREATE PROCEDURE buscarLetra (letra VARCHAR(1))
SELECT nm_cliente 'Nome',
ds_ocupacao_cliente 'Ocupação',
sg_sexo_cliente 'Sexo'
FROM 
tb_clientes
WHERE 
nm_cliente LIKE CONCAT('%', letra , '%');

CALL buscarLetra('s');