DROP DATABASE IF EXISTS Pizzaria;
CREATE DATABASE Pizzaria;
USE Pizzaria;

CREATE TABLE Cliente (
    cliente_id  INT AUTO_INCREMENT,
    email       VARCHAR(60),
    senha       VARCHAR(60),
    nome        VARCHAR(60),
    cpf         VARCHAR(11),
    data_nasciment DATE,
    numero_celular BIGINT,
    numero_telefone BIGINT,

    PRIMARY KEY(cliente_id)
);

CREATE TABLE Endereco (
    endereco_id     INT AUTO_INCREMENT,
    cliente_id      INT,
    rua             VARCHAR(60),
    numero          VARCHAR(10),
    bairro          VARCHAR(60),
    cidade          VARCHAR(60),
    cep             BIGINT,

    PRIMARY KEY (endereco_id),
    FOREIGN KEY (cliente_id)
        REFERENCES Cliente(cliente_id)
);

CREATE TABLE Fornecedor_Produto (
    fornecedor_id   INT AUTO_INCREMENT,
    nome            VARCHAR(60),
    cpnj            VARCHAR(20),

    PRIMARY KEY (fornecedor_id)
);

CREATE TABLE Produto (
    produto_id      INT AUTO_INCREMENT,
    fornecedor_id   INT,
    nome            VARCHAR(60),
    preco           DECIMAL(6, 2),

    PRIMARY KEY (produto_id),
    FOREIGN KEY (fornecedor_id)
        REFERENCES Fornecedor_Produto(fornecedor_id)
);

CREATE TABLE Pizza (
    pizza_id        INT AUTO_INCREMENT,
    sabor           VARCHAR(60),
    preco           DECIMAL(6, 2),

    PRIMARY KEY (pizza_id)
);

CREATE TABLE Pedido (
    pedido_id       INT AUTO_INCREMENT,
    total_preco     DECIMAL(6, 2),
    mesa_pedido     VARCHAR(10),
    data_pedido     DATE,

    PRIMARY KEY (pedido_id)
);

CREATE TABLE Pedido_Produto (
    pedido_produto_id INT AUTO_INCREMENT,
    pedido_id       INT,
    produto_id      INT,

    PRIMARY KEY (pedido_produto_id),
    UNIQUE (pedido_id, produto_id),

    FOREIGN KEY (pedido_id)
        REFERENCES Pedido(pedido_id),

    FOREIGN KEY (produto_id)
        REFERENCES Produto(produto_id)
);

CREATE TABLE Pedido_Pizza (
    pedido_pizza_id INT AUTO_INCREMENT,
    pedido_id       INT,
    pizza_id        INT,

    PRIMARY KEY (pedido_pizza_id),
    UNIQUE (pedido_id, pizza_id),

    FOREIGN KEY (pedido_id)
        REFERENCES Pedido(pedido_id),

    FOREIGN KEY (pizza_id)
        REFERENCES Pizza(pizza_id)
);
