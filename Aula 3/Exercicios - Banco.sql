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
    SI.vl_produto 'Valor - Loja Super Info',
    LE.vl_produto 'Valor - Loja que Explode'
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
    SI.vl_produto 'Valor - Loja Super Info',
    MI.vl_produto 'Valor - Mega Informática'
FROM
	estoque_superinfo SI
    LEFT JOIN
    estoque_megainformatica MI ON(SI.id_produto = MI.id_produto)
UNION
SELECT
	MI.id_produto 'ID',
    MI.nm_produto 'Nome',
    MI.nm_fabricante 'Fabricante',
    MI.ds_produto 'Descrição',
    SI.vl_produto 'Valor - Loja Super Info',
    MI.vl_produto 'Valor - Mega Informática'
FROM
	estoque_superinfo SI
    RIGHT JOIN
    estoque_megainformatica MI ON(SI.id_produto = MI.id_produto)
WHERE
	SI.id_produto is null
;

/* 3. Dentre os itens no estoque da loja que explode e da pikachu informática qual é o mais caro? */
SELECT 
    LEPI.id_produto 'ID',
    LEPI.nm_produto 'Nome',
    LEPI.nm_fabricante 'Fabricante',
    LEPI.ds_produto 'Descrição',
    LEPI.vl_produto 'Valor'
FROM
	(
    SELECT
		id_produto,
		nm_produto,
		nm_fabricante,
		ds_produto,
		vl_produto
    FROM
		estoque_lojaqueexplode
	UNION ALL
    SELECT
		id_produto,
		nm_produto,
		nm_fabricante,
		ds_produto,
		vl_produto
    FROM
		estoque_pikachuinformatica
	) LEPI
WHERE
	LEPI.vl_produto = 
    (
    SELECT 
    MAX(LEPI.vl_produto)
	FROM
		(
		SELECT
			id_produto,
			nm_produto,
			nm_fabricante,
			ds_produto,
			vl_produto
		FROM
			estoque_lojaqueexplode
		UNION ALL
		SELECT
			id_produto,
			nm_produto,
			nm_fabricante,
			ds_produto,
			vl_produto
		FROM
			estoque_pikachuinformatica
		) LEPI
	)
;

/* 6. Quais itens aparecem no estoque da loja que explode e da mega informática? */
SELECT
	LE.id_produto 'ID',
    LE.nm_produto 'Nome',
    LE.nm_fabricante 'Fabricante',
    LE.ds_produto 'Descrição',
    LE.vl_produto 'Valor - Loja que Explode',
    MI.vl_produto 'Valor - Mega Informática'
FROM
	estoque_lojaqueexplode LE
    INNER JOIN
    estoque_megainformatica MI ON (LE.id_produto = MI.id_produto)
;

/* 7. Quais itens aparecem no estoque da pikachu informática e não aparecem no estoque da mega informática? */
SELECT
	PI.id_produto 'ID',
    PI.nm_produto 'Nome',
    PI.nm_fabricante 'Fabricante',
    PI.ds_produto 'Descrição',
    PI.vl_produto 'Valor - Pikachu Informática'
FROM
	estoque_pikachuinformatica PI
    LEFT JOIN
    estoque_megainformatica MI ON (PI.id_produto = MI.id_produto)
WHERE
	MI.id_produto is null
;

/* 8. Liste todos os itens da pikachu informática em ordem alfabética. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_pikachuinformatica
ORDER BY(nm_produto) ASC
;

/* 9. Liste todos os itens da mega informática em ordem decrescente de preço. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_megainformatica
ORDER BY(vl_produto) DESC
;

/* 10. Liste todos os itens da pikachu informática em ordem crescente de preço excluindo os itens que custem menos de 600,00 e mais de 4000,00. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_pikachuinformatica
WHERE
	vl_produto > 600 AND vl_produto < 4000
ORDER BY(vl_produto) ASC
;

/* 11. Liste todos os itens da super info e da loja que explode que custem mais de 500,00 e menos de 1000,00. */
SELECT
	SI.id_produto 'ID',
    SI.nm_produto 'Nome',
    SI.nm_fabricante 'Fabricante',
    SI.ds_produto 'Descrição',
    SI.vl_produto 'Valor - Loja Super Info',
    LE.vl_produto 'Valor - Loja que Explode'
FROM
	estoque_superinfo SI
    LEFT JOIN
    estoque_lojaqueexplode LE ON(SI.id_produto = LE.id_produto)
WHERE
	(SI.vl_produto > 500 AND SI.vl_produto < 1000) OR (LE.vl_produto > 500 AND LE.vl_produto < 1000)
UNION
SELECT
	LE.id_produto 'ID',
    LE.nm_produto 'Nome',
    LE.nm_fabricante 'Fabricante',
    LE.ds_produto 'Descrição',
    SI.vl_produto 'Valor - Loja Super Info',
    LE.vl_produto 'Valor - Loja que Explode'
FROM
	estoque_superinfo SI
    RIGHT JOIN
    estoque_lojaqueexplode LE ON(SI.id_produto = LE.id_produto)
WHERE
	SI.id_produto is null AND (SI.vl_produto > 500 AND SI.vl_produto < 1000) OR (LE.vl_produto > 500 AND LE.vl_produto < 1000)
;

/* 12. Liste todos os itens da pikachu informática que sejam da marca “HP”. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_pikachuinformatica
WHERE
	nm_fabricante = "HP"
;

/* 13. Liste todos os itens da loja que explode que em sua descrição contem com a palavra “Ryzen”. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_lojaqueexplode
WHERE
	ds_produto LIKE "%Ryzen%"
;

/* 14. Liste todos os itens da loja super info que possuam a letra “f” em seu nome e que custem menos de 700,00. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor'
FROM
	estoque_superinfo
WHERE
	nm_produto LIKE "%f%" AND
    vl_produto < 700
;

/* 15. Qual a média de valores dos itens da marca AMD na loja pikachu informática? */
SELECT
    AVG(vl_produto) 'Média dos valores dos itens da marca AMD'
FROM
	estoque_pikachuinformatica
WHERE
	nm_fabricante = "AMD"
;

/* 16. Qual a média de valores dos itens da marca AMD na loja mega informática? */
SELECT
    AVG(vl_produto) 'Média dos valores dos itens da marca AMD'
FROM
	estoque_megainformatica
WHERE
	nm_fabricante = "AMD"
;

/* 17. Qual a soma dos valores dos produtos da loja super info? */
SELECT
    SUM(vl_produto) 'Soma dos valores dos itens da Loja Super Info'
FROM
	estoque_superinfo
;

/* 18. Quais itens aparecem na loja super info mas não aparecem na loja que explode? */
SELECT
	SI.id_produto 'ID',
    SI.nm_produto 'Nome',
    SI.nm_fabricante 'Fabricante',
    SI.ds_produto 'Descrição',
    SI.vl_produto 'Valor - Loja Super Info'
FROM
	estoque_superinfo SI
    LEFT JOIN
    estoque_lojaqueexplode LE ON (SI.id_produto = LE.id_produto)
WHERE
	LE.id_produto is null
;

/* 19. Quais itens aparecem na loja que explode mas não aparecem na loja super info? */
SELECT
	LE.id_produto 'ID',
    LE.nm_produto 'Nome',
    LE.nm_fabricante 'Fabricante',
    LE.ds_produto 'Descrição',
    LE.vl_produto 'Valor - Loja que Explode'
FROM
	estoque_superinfo SI
    RIGHT JOIN
    estoque_lojaqueexplode LE ON (SI.id_produto = LE.id_produto)
WHERE
	SI.id_produto is null
;

/* 20. Qual a média de valores dos produtos da pikachu informática que possuam a palavra “Notebook” na descrição e cujo valor seja acima de 4000,00? */
SELECT
    AVG(vl_produto) 'Média dos valores dos itens com a palavra Notebook na descrição'
FROM
	estoque_pikachuinformatica
WHERE
	ds_produto LIKE "%Notebook%" AND
    vl_produto > 4000
;

/* 21. Liste todos os itens do estoque da mega informática que possuam em sua descrição o termo “vídeo integrado” e que custem acima de 500,00. */
SELECT
	id_produto 'ID',
    nm_produto 'Nome',
    nm_fabricante 'Fabricante',
    ds_produto 'Descrição',
    vl_produto 'Valor - Mega Informática'
FROM
	estoque_megainformatica
WHERE
	ds_produto LIKE "%vídeo integrado%" AND
    vl_produto > 500
;

/* 22. Liste os produtos que estejam no estoque da mega informática, loja que explode e pikachu informática. */
SELECT
	LE.id_produto 'ID',
    LE.nm_produto 'Nome',
    LE.nm_fabricante 'Fabricante',
    LE.ds_produto 'Descrição',
    LE.vl_produto 'Valor - Loja que Explode',
	MI.vl_produto 'Valor - Mega Informática',
    PI.vl_produto 'Valor - Pikachu Informática'
FROM
	estoque_megainformatica MI
    INNER JOIN
    estoque_lojaqueexplode LE ON (MI.id_produto = LE.id_produto)
    INNER JOIN
    estoque_pikachuinformatica PI ON (LE.id_produto = PI.id_produto)
;

/* 23. Qual a média de valores dos itens presentes no estoque da super info e da pikachu informática? */
SELECT
	SUM(SI.vl_produto + PI.vl_produto) 'Soma de Valores - Loja Super Info e Pikachu Informática'
FROM
	estoque_superinfo SI
    INNER JOIN
    estoque_pikachuinformatica PI ON (SI.id_produto = PI.id_produto)
;

/* 24. Faça as médias dos produtos de todas as lojas. */
SELECT 
    AVG(Valores.vl_produto) 'Médias dos produtos de todas as lojas'
FROM
	(
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_lojaqueexplode
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_megainformatica
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_pikachuinformatica
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_superinfo
	) Valores
;

/* 25. Faça a soma dos valores dos produtos de todas as lojas. */
SELECT 
    SUM(Valores.vl_produto) 'Soma dos produtos de todas as lojas'
FROM
	(
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_lojaqueexplode
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_megainformatica
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_pikachuinformatica
	UNION ALL
    SELECT
		id_produto,
		vl_produto
    FROM
		estoque_superinfo
	) Valores
;
