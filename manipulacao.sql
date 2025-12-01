USE horto_ceras;

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

-- Deletando uma empresa
DELETE FROM EMPRESA 
WHERE cnpj_empresa = '12345678000195';

-- Verificando se os vendedores associados foram deletados
SELECT * FROM VENDEDORES WHERE cnpj_empresa = '12345678000195';



