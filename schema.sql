-- Criação da tabela Empresa
CREATE TABLE Empresa (
    CNPJ VARCHAR(14) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    PRIMARY KEY (CNPJ)
);

-- Criação da tabela Vendedores
CREATE TABLE Vendedores (
    ID_Vendedor INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    CNPJ_Empresa VARCHAR(14) NOT NULL,
    PRIMARY KEY (ID_Vendedor),
    FOREIGN KEY (CNPJ_Empresa) REFERENCES Empresa(CNPJ)
);

-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID_Cliente INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CNPJ_CPF VARCHAR(14) NOT NULL UNIQUE,
    Endereco VARCHAR(255),
    ID_Vendedor INT,
    PRIMARY KEY (ID_Cliente),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedores(ID_Vendedor)
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    ID_Pedido INT NOT NULL AUTO_INCREMENT,
    Data_Pedido DATE NOT NULL,
    Valor_Total DECIMAL(10,2) NOT NULL,
    ID_Cliente INT NOT NULL,
    PRIMARY KEY (ID_Pedido),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Criação da tabela Produto
CREATE TABLE Produto (
    ID_Produto INT NOT NULL AUTO_INCREMENT,
    Nome_Produto VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT NOT NULL DEFAULT 0,
    PRIMARY KEY (ID_Produto)
);

-- Criação da tabela ItemPedido
CREATE TABLE ItemPedido (
    ID_Pedido INT NOT NULL,
    ID_Produto INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitarioNaVenda DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);
