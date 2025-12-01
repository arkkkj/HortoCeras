USE horto_ceras

--JOIN Simples
  -- Este comando irá listar todos os produtos e seus respectivos vendedores:
SELECT 
    P.nome_produto, 
    V.nome_vendedor
FROM 
    PRODUTO P
JOIN 
    ITEMPEDIDO I ON P.id_produto = I.id_produto
JOIN 
    PEDIDO PD ON I.id_pedido = PD.id_pedido
JOIN 
    CLIENTE C ON PD.id_cliente = C.id_cliente
JOIN 
    VENDEDORES V ON C.id_vendedor = V.id_vendedor;

--Média com GROUP BY
  --Este comando calculará a média do valor total dos pedidos por vendedor:
SELECT 
    V.nome_vendedor, 
    AVG(P.valor_total) AS media_vendas
FROM 
    VENDEDORES V
JOIN 
    CLIENTE C ON V.id_vendedor = C.id_vendedor
JOIN 
    PEDIDO P ON C.id_cliente = P.id_cliente
GROUP BY 
    V.nome_vendedor;

--Simples com WHERE
  --Este comando irá selecionar todos os produtos que têm um preço superior a R$ 50,00:
SELECT 
    * 
FROM 
    PRODUTO 
WHERE 
    preco > 50.00;

--JOIN com COUNT e ORDER BY
  --Este comando contará o número de pedidos por cliente e ordenará os resultados pelo número de pedidos em ordem decrescente:
SELECT 
    C.nome_cliente, 
    COUNT(P.id_pedido) AS numero_pedidos
FROM 
    CLIENTE C
JOIN 
    PEDIDO P ON C.id_cliente = P.id_cliente
GROUP BY 
    C.nome_cliente
ORDER BY 
    numero_pedidos DESC;

