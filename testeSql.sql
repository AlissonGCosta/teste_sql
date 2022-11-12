-- segue na ordem das perguntas no doc


-- primeira pergunta

INSERT INTO [PRODUTOS] ([cod_prod], [loj_prod], [desc_prod], [dt_inclu_prod], [preco_prod]) VALUES (170, 2, "LEITE CONDENSADO MOCOCA", "30/12/2010", 45.40)

UPDATE PRODUTOS

-- Segunda pergunta da primeira página:

UPDATE PRODUTOS
SET preco_prod = "95.40"
WHERE cod_prod = "170" AND loj_prod = "2"


-- Terceira pergunta:

SELECT *
FROM PRODUTOS
WHERE loj_prod = "1" or loj_prod = "2"

-- quarta pergunta

SELECT  MAX(dt_inclu_prod), Min(dt_inclu_prod) from PRODUTOS


-- Quinta pergunta:

SELECT COUNT (cod_prod)
FROM PRODUTOS

-- Sexta pergunta:

SELECT *
FROM PRODUTOS
WHERE desc_prod LIKE "L%"

-- setima pergunta:

SELECT sum(preco_prod) from PRODUTOS

WHERE preco_prod > 100


-- segunda pagiina

-- pergunta A) :

SELECT PRODUTOS.loj_prod, PRODUTOS.desc_prod, ESTOQUE.qtd_prod, PRODUTOS.cod_prod, PRODUTOS.preco_prod from ESTOQUE, PRODUTOS

WHERE loj_prod = 1

-- pergunta B):

SELECT PRODUTOS.cod_prod, ESTOQUE.cod_prod FROM  PRODUTOS, ESTOQUE

WHERE PRODUTOS.cod_prod != ESTOQUE.cod_prod 


-- pergunta C):

SELECT PRODUTOS.cod_prod, ESTOQUE.cod_prod, FROM  PRODUTOS, ESTOQUE

WHERE  ESTOQUE.cod_prod != PRODUTOS.cod_prod

