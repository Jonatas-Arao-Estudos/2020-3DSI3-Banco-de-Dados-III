USE banco;

/*
-------- Legenda----------
LE -> Loja que explode
MI -> Mega informatica
PI -> Pikachu Informática
SI -> Super Info
*/

/* 1. Quais são os itens que aparecem no estoque da loja super info e loja que explode? */
SELECT
	SI.id_produto 'ID',
    SI.nm_produto 'Nome',
    SI.nm_fabricante 'Fabricante',
    SI.ds_produto 'Descrição',
    SI.vl_produto 'Valor'
FROM
	estoque_superinfo SI
    INNER JOIN
    estoque_lojaqueexplode LE ON (SI.id_produto = LE.id_produto)
;

/* 2. Quais são os itens que aparecem se juntarmos os estoques das lojas super info e mega informática? */
SELECT
	SI.id_produto 'ID',
    SI.nm_produto 'Nome',
    SI.nm_fabricante 'Fabricante',
    SI.ds_produto 'Descrição',
    SI.vl_produto 'Valor',
    MI.id_produto 'ID',
    MI.nm_produto 'Nome',
    MI.nm_fabricante 'Fabricante',
    MI.ds_produto 'Descrição',
    MI.vl_produto 'Valor'
FROM
	estoque_superinfo SI,
    estoque_megainformatica MI
;
/* 3. Dentre os itens no estoque da loja que explode e da pikachu informática qual é o mais caro? */

/* 4. Qual o item mais barato da loja mega informática? */

/* 5. Quais itens aparecem no estoque da mega informática e da pikachu informática? */

/* 6. Quais itens aparecem no estoque da loja que explode e da mega informática? */

/* 7. Quais itens aparecem no estoque da pikachu informática e não aparecem no estoque da mega informática? */

/* 8. Liste todos os itens da pikachu informática em ordem alfabética. */

/* 9. Liste todos os itens da mega informática em ordem decrescente de preço. */

/* 10. Liste todos os itens da pikachu informática em ordem crescente de preço excluindo os itens que custem menos de 600,00 e mais de 4000,00. */

/* 11. Liste todos os itens da super info e da loja que explode que custem mais de 500,00 e menos de 1000,00. */

/* 12. Liste todos os itens da pikachu informática que sejam da marca “HP”. */

/* 13. Liste todos os itens da loja que explode que em sua descrição contem com a palavra “Ryzen”. */

/* 14. Liste todos os itens da loja super info que possuam a letra “f” em seu nome e que custem menos de 700,00. */

/* 15. Qual a média de valores dos itens da marca AMD na loja pikachu informática? */

/* 16. Qual a média de valores dos itens da marca AMD na loja mega informática? */

/* 17. Qual a soma dos valores dos produtos da loja super info? */

/* 18. Quais itens aparecem na loja super info mas não aparecem na loja que explode? */

/* 19. Quais itens aparecem na loja que explode mas não aparecem na loja super info? */

/* 20. Qual a média de valores dos produtos da pikachu informática que possuam a palavra “Notebook” na descrição e cujo valor seja acima de 4000,00? */

/* 21. Liste todos os itens do estoque da mega informática que possuam em sua descrição o termo “vídeo integrado” e que custem acima de 500,00. */

/* 22. Liste os produtos que estejam no estoque da mega informática, loja que explode e pikachu informática. */

/* 23. Qual a média de valores dos itens presentes no estoque da super info e da pikachu informática? */

/* 24. Faça as médias dos produtos de todas as lojas. */

/* 25. Faça a soma dos valores dos produtos de todas as lojas. */
