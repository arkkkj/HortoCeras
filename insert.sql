USE horto_ceras;

-- Inserindo dados na tabela EMPRESA
INSERT INTO EMPRESA (cnpj_empresa, nome, endereco) VALUES 
('12345678000195', 'Empresa A', 'Rua A, 123');

-- Inserindo dados na tabela VENDEDORES
INSERT INTO VENDEDORES (id_vendedor, cnpj_empresa, nome_vendedor, cpf) VALUES 
(1, '12345678000195', 'Vendedor A', '12345678901'),
(2, '12345678000195', 'Vendedor B', '10987654321'),
(3, '12345678000195', 'Vendedor C', '14253678945');

-- Inserindo dados na tabela CLIENTE
INSERT INTO CLIENTE (id_cliente, id_vendedor, nome_cliente, cnpj_cpf, endereco) VALUES 
(1, 1, 'Cliente A', '12345678901', 'Rua C, 789'),
(2, 2, 'Cliente B', '10987654321', 'Rua D, 101');

-- Inserindo dados na tabela PEDIDO
INSERT INTO PEDIDO (id_pedido, id_cliente, data_pedido, valor_total) VALUES 
(1, 1, '2025-11-27', 150.00),
(2, 2, '2025-11-28', 200.00);

-- Inserindo dados na tabela PRODUTO
INSERT INTO PRODUTO (id_produto, nome_produto, preco, estoque) VALUES 
(1, 'Produto A', 50.00, 10),
(2, 'Produto B', 75.00, 5);

-- Inserindo dados na tabela ITEMPEDIDO
INSERT INTO ITEMPEDIDO (id_produto, id_pedido, quantidade, PrecoUnitarioNaVenda) VALUES 
(1, 1, 2, 50.00),
(2, 2, 1, 75.00);

-- Atualizando o nome de um vendedor
UPDATE VENDEDORES 
SET nome_vendedor = 'Vendedor Atualizado' 
WHERE id_vendedor = 1;

-- Atualizando o endereço de um cliente
UPDATE CLIENTE 
SET endereco = 'Rua C, 999' 
WHERE id_cliente = 1;

-- Atualizando o preço de um produto
UPDATE PRODUTO 
SET preco = 55.00 
WHERE id_produto = 1;

-- Deletando um pedido específico
DELETE FROM PEDIDO 
WHERE id_pedido = 2;

-- Deletando um vendedor
DELETE FROM VENDEDORES 
WHERE id_vendedor = 2;

-- Deletando um cliente
DELETE FROM CLIENTE 
WHERE id_cliente = 2;
