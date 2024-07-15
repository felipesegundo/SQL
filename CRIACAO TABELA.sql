

CREATE DATABASE [VENDAS SUCOS]; -- CRIANDO UM BANCO DE DADOS

CREATE TABLE [PRODUTOS](
CODIGO VARCHAR(10) NOT NULL, --N�O PODE HAVER NULOS
DESCRITOR VARCHAR(100) NULL, -- PODE HAVER NULOS
SABOR VARCHAR(50) NULL,
TAMANHO VARCHAR(50) NULL,
EMBALAGEM VARCHAR (50) NULL,
PRECO_LISTA FLOAT NULL
PRIMARY KEY (CODIGO) -- ESPECIFICANDO QUAL A CHAVE PRIMARIA
)

CREATE TABLE VENDEDORES(
MATRICULA VARCHAR (5) NOT NULL,
NOME VARCHAR (100) NULL,
BAIRRO VARCHAR (50) NULL,
COMISSAO FLOAT NULL,
DATA_ADMISSAO DATE NULL,
FERIAS BIT NULL,
PRIMARY KEY (MATRICULA)
)

CREATE TABLE CLIENTES (
    CPF VARCHAR(11) NOT NULL,
    NOME VARCHAR(100),
    ENDERECO VARCHAR(150),
    BAIRRO VARCHAR(50),
    CIDADE VARCHAR(50),
    ESTADO VARCHAR(50),
    CEP VARCHAR(9),
    DATA_NASCIMENTO DATE,
    IDADE INT,
    SEXO VARCHAR(1),
    LIMITE_CREDITO FLOAT,
    VOLUME_COMPRA FLOAT,
    PRIMEIRA_COMPRA BIT,
    PRIMARY KEY (CPF)
);

CREATE TABLE [TABELA DE VENDAS](
NUMERO VARCHAR (5) NOT NULL,
DATA_VENDAS DATE NULL,
CPF VARCHAR (11) NOT NULL,
MATRICULA VARCHAR (11) NOT NULL,
IMPOSTO FLOAT NULL,
PRIMARY KEY (NUMERO)
)
-- CHAVES ESTRANGEIRAS
ALTER TABLE [TABELA DE VENDAS]              -- Altera a tabela chamada "TABELA DE VENDAS"
ADD CONSTRAINT FK_CLIENTES                  -- Adiciona uma restri��o chamada "FK_CLIENTES" (chave estrangeira para clientes)
FOREIGN KEY (CPF)                           -- Define a coluna "CPF" como chave estrangeira
REFERENCES CLIENTES (CPF);                  -- A chave estrangeira "CPF" referencia a coluna "CPF" na tabela "CLIENTES"

ALTER TABLE [TABELA DE VENDAS]              -- Altera a tabela chamada "TABELA DE VENDAS"
ADD CONSTRAINT FK_VENDEDORES                -- Adiciona uma restri��o chamada "FK_VENDEDORES" (chave estrangeira para vendedores)
FOREIGN KEY (MATRICULA)                     -- Define a coluna "MATRICULA" como chave estrangeira
REFERENCES VENDEDORES (MATRICULA);          -- A chave estrangeira "MATRICULA" referencia a coluna "MATRICULA" na tabela "VENDEDORES"


--ALTERANDO A CLASSE E A QUANTIDADE DE UMA COLUNA DE UMA TABELA
ALTER TABLE [TABELA DE VENDAS]
ALTER COLUMN MATRICULA VARCHAR (5) NOT  NULL
-------------------------------------------------------------------
CREATE TABLE [TABELA DE ITENS NOTAS FISAIS](
NUMERO VARCHAR (5) NOT NULL,
CODIGO VARCHAR (10) NOT NULL,
QUANTIDADE INT,
PRECO FLOAT 
PRIMARY KEY (NUMERO, CODIGO)
)
-- CHAVES ESTRANGEIRAS
ALTER TABLE [TABELA DE ITENS NOTAS FISAIS]
ADD CONSTRAINT [FK TABELA DE VENDAS]
FOREIGN KEY (NUMERO) REFERENCES [TABELA DE VENDAS] (NUMERO);

ALTER TABLE [TABELA DE ITENS NOTAS FISAIS]
ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO) REFERENCES PRODUTOS (CODIGO);

--INSERINDO DADOS NA TABELA
INSERT INTO PRODUTOS 
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)VALUES
('1040107', 'LIGHT - 345ML', 'MELANCIA', '350ML', 'LATA', 4.56);

SELECT * FROM PRODUTOS

INSERT INTO PRODUTOS (
    CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA
) VALUES 
    ('1040111', 'Light - 350 ml - Manga' , 'Manga', '350 ml', 'Lata', 3.20), 
    ('1040112', 'Light - 350 ml - Ma�a' , 'Ma�a', '350 ml', 'Lata', 4.20),
	('1040110', 'Light - 350 ml - Jaca' , 'Jaca', '350 ml', 'Lata', 3.50),
	('1040108', 'Light - 350 ml - Graviola' , 'Graviola', '350 ml', 'Lata', 4.00),
	('1040109', 'Light - 350 ml - A�ai' , 'A�ai', '350 ml', 'Lata', 5.60);


