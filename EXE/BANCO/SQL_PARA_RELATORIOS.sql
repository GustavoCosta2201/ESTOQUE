/*mostrar todas as compras agrupadas por FORMA_PGTO*/
select count(A.id_compra)as qtde_compra, sum(A.valor)as valor_compra, A.id_forma_pgto,b.descricao
from compra A
inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO
group by A.id_forma_pgto,b.DESCRICAO

/*mostrar todas as vendas agrupadas por FORMA_PGTO*/
select count(A.id_venda)as qtde_venda, sum(A.valor)as valor_venda, 
A.id_forma_pgto,b.descricao
from venda A
inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO
group by A.id_forma_pgto,b.DESCRICAO

/*mostrar todas as compras agrupadas por FORMA_PGTO em periodo*/
select count(A.id_compra)as qtde_compra, sum(A.valor)as valor_compra, A.id_forma_pgto,b.descricao
from compra A
inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO
where a.CADASTRO between '01.01.2019' and '31.12.2020'
group by A.id_forma_pgto,b.DESCRICAO

/*mostrar todas as vendas agrupadas por FORMA_PGTO em periodo*/
select count(A.id_venda)as qtde_venda, sum(A.valor)as valor_venda, 
A.id_forma_pgto,b.descricao
from venda A
inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO
where a.CADASTRO between '01.01.2020' and '31.12.2020'
group by A.id_forma_pgto,b.DESCRICAO

/* MOSTRAR O QUANTO COMPREI POR PERIODO AGRUPADO POR FORNECEDOR */
SELECT COUNT(A.ID_COMPRA), SUM(A.VALOR),A.ID_FORNECEDOR,B.NOME
FROM COMPRA A
INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR
where a.CADASTRO between '01.01.2019' and '31.12.2019'
GROUP BY A.ID_FORNECEDOR,B.NOME


/* MOSTRAR O QUANTO VENDEMOS POR PERIODO AGRUPADO POR FORNECEDOR */
SELECT COUNT(A.ID_VENDA), SUM(A.VALOR),A.ID_CLIENTE,B.NOME
FROM VENDA A
INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE
where a.CADASTRO between '01.01.2019' and '31.12.2019'
GROUP BY A.ID_CLIENTE,B.NOME

/* MOSTRAR O QUANTO PAGAMOS EM PERIODO AGRUPADO POR FORNECEDOR */
SELECT COUNT(A.ID_COMPRA),SUM(A.TOTAL_PAGAR), C.ID_FORNECEDOR, C.NOME FROM CONTAS_PAGAR A
INNER JOIN COMPRA B ON B.ID_COMPRA = A.ID_COMPRA
INNER JOIN FORNECEDOR C ON C.ID_FORNECEDOR=B.ID_FORNECEDOR
WHERE A.STATUS='PAGO'
group BY C.ID_FORNECEDOR,C.NOME

/* MOSTRAR O QUANTO PAGAMOS EM PERIODO AGRUPADO POR FORNECEDOR */
SELECT COUNT(A.ID_COMPRA),SUM(A.TOTAL_PAGAR), C.ID_FORNECEDOR, C.NOME FROM CONTAS_PAGAR A
INNER JOIN COMPRA B ON B.ID_COMPRA = A.ID_COMPRA
INNER JOIN FORNECEDOR C ON C.ID_FORNECEDOR=B.ID_FORNECEDOR
WHERE A.STATUS='RECEBIDO'
group BY C.ID_FORNECEDOR,C.NOME

/* MOSTRAR O QUANTO RECEBEMOS AGRUPADO POR CLIENTE */
SELECT COUNT(A.ID_VENDA),SUM(A.TOTAL_PAGAR), C.ID_CLIENTE, C.NOME 
FROM CONTAS_RECEBER A
INNER JOIN VENDA B ON B.ID_VENDA = A.ID_VENDA
INNER JOIN CLIENTE C ON C.ID_CLIENTE =B.ID_CLIENTE
WHERE A.STATUS='RECEBIDO'
group BY C.ID_CLIENTE,C.NOME
ORDER BY C.ID_CLIENTE,C.NOME

/* MOSTRAR O QUANTO RECEBEMOS AGRUPADO POR CLIENTE EM PERIODO*/
SELECT COUNT(A.ID_VENDA)AS QDTE_VENDA,SUM(A.TOTAL_PAGAR)AS TOTAL_RECEBIDO, C.ID_CLIENTE, C.NOME 
FROM CONTAS_RECEBER A
INNER JOIN VENDA B ON B.ID_VENDA = A.ID_VENDA
INNER JOIN CLIENTE C ON C.ID_CLIENTE =B.ID_CLIENTE
WHERE A.STATUS='RECEBIDO'
AND B.CADASTRO between '01.01.2019' and '31.12.2019'
group BY C.ID_CLIENTE,C.NOME
ORDER BY C.ID_CLIENTE,C.NOME

/* MOSTRAR O QUANTO TEMOS QUE PAGAR AGRUPADOS POR FORNECEDOR*/
SELECT count(A.ID_COMPRA)AS qTDE_COMPRA,SUM(A.VALOR_PARCELA)AS VALOR_PAGAR, C.ID_FORNECEDOR,C.NOME
FROM CONTAS_PAGAR A
INNER JOIN COMPRA B ON B.ID_COMPRA = A.ID_COMPRA
INNER JOIN FORNECEDOR C ON C.ID_FORNECEDOR=B.ID_FORNECEDOR
AND A.STATUS='EM ABERTO'
GROUP BY C.ID_FORNECEDOR, C.NOME
ORDER BY C.ID_FORNECEDOR

/* MOSTRAR O QUANTO TEMOS QUE PAGAR AGRUPADOS POR FORNECEDOR POR PERIODO*/
SELECT count(A.ID_COMPRA)AS qTDE_COMPRA,
        SUM(A.VALOR_PARCELA)AS VALOR_PAGAR,
        C.ID_FORNECEDOR,C.NOME
FROM CONTAS_PAGAR A
INNER JOIN COMPRA B ON B.ID_COMPRA = A.ID_COMPRA
INNER JOIN FORNECEDOR C ON C.ID_FORNECEDOR=B.ID_FORNECEDOR
AND A.STATUS= 'EM ABERTO'
AND A.DT_VENCIMENTO between '01.01.2020' AND '31.12.2020'
GROUP BY C.ID_FORNECEDOR, C.NOME
ORDER BY C.ID_FORNECEDOR


/* MOSTRAR O QUANTO TEMOS QUE RECEBER AGRUPADOS POR CLIENTE POR PERIODO*/
SELECT count(A.ID_VENDA)AS QTDE_VENDA,
        SUM(A.VALOR_PARCELA)AS VALOR_PAGAR,
        C.ID_CLIENTE,C.NOME
FROM CONTAS_RECEBER A
INNER JOIN VENDA B ON B.ID_VENDA = A.ID_VENDA
INNER JOIN CLIENTE C ON C.ID_CLIENTE=B.ID_CLIENTE
AND A.STATUS='EM ABERTO'
AND A.DT_VENCIMENTO between '01.01.2019' AND '31.12.2019'
GROUP BY C.ID_CLIENTE, C.NOME
ORDER BY C.ID_CLIENTE

/* MOSTRAR O QUANTO COMPRAMOS POR MES*/
select
  extract(MONTH FROM A.CADASTRO) AS MES,
  extract(YEAR FROM A.CADASTRO) AS ANO,
  SUM(A.VALOR) AS VALOR_COMPRA
  FROM COMPRA A
  WHERE A.CADASTRO between '01.01.2020' AND '31.12.2020'
  group BY extract(MONTH FROM A.CADASTRO),  extract(YEAR FROM A.CADASTRO)
  ORDER BY  extract(MONTH FROM A.CADASTRO)


/* MOSTRAR O QUANTO VENDEMOS POR MES*/
select
  extract(MONTH FROM A.CADASTRO) AS MES,
  extract(YEAR FROM A.CADASTRO) AS ANO,
  SUM(A.VALOR) AS VALOR_VENDA,
  
  case                                                                     
    when extract(MONTH FROM A.CADASTRO) = 1 THEN 'Janeiro'           
    when extract(MONTH FROM A.CADASTRO) = 2 THEN 'Fevereiro'
    when extract(MONTH FROM A.CADASTRO) = 3 THEN 'mar�o'           
    when extract(MONTH FROM A.CADASTRO) = 4 THEN 'Abril' 
    when extract(MONTH FROM A.CADASTRO) = 5 THEN 'Maio'           
    when extract(MONTH FROM A.CADASTRO) = 6 THEN 'Junho' 
    when extract(MONTH FROM A.CADASTRO) = 7 THEN 'Julho'           
    when extract(MONTH FROM A.CADASTRO) = 8 THEN 'Agosto'
    when extract(MONTH FROM A.CADASTRO) = 9 THEN 'Setembro'           
    when extract(MONTH FROM A.CADASTRO) = 10 THEN 'Outubro' 
    when extract(MONTH FROM A.CADASTRO) = 11 THEN 'Novembro'           
    when extract(MONTH FROM A.CADASTRO) = 12 THEN 'Dezembro'           
    /* else 'Outro'*/                                                
end as MES
  FROM VENDA A
  WHERE A.CADASTRO between '01.01.2019' AND '31.12.2020'
  group BY extract(MONTH FROM A.CADASTRO),  extract(YEAR FROM A.CADASTRO)
  ORDER BY  extract(MONTH FROM A.CADASTRO)










