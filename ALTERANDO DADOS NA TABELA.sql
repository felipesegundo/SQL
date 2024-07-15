-- ALTERANDO DADOS NA TABELA
SELECT * FROM PRODUTOS

UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO = '1040107' -- ATUALIANDO UM NOVO PRECO DE LISTA PARA UMA LINHA ESPEFICIFICA

UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'MANGA' -- AUMENTO DE 10% NO PRECO DOS SABORES MANGA

-- MUDANDO UM NOME ESPECIFICO DENTRO DE UM CAMPO
UPDATE PRODUTOS SET 
    DESCRITOR = replace(DESCRITOR, '350 ml', '550 ml'), 
    TAMANHO = '550 ml' 
WHERE TAMANHO = '350 ml';

SELECT DESCRITOR, TAMANHO, EMBALAGEM FROM PRODUTOS 
WHERE TAMANHO = '550 ml';

-- EXCLUINDO LINHAS DA TABELA
INSERT INTO PRODUTOS 
    (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
VALUES 
    ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
    ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
    ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
    ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
    ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
    ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
    ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
    ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
    ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
    ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
    ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
    ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

	SELECT * FROM PRODUTOS

	DELETE FROM PRODUTOS WHERE CODIGO = '1001000'

	DELETE FROM PRODUTOS WHERE SABOR = 'SABOR DOS ALPES' AND TAMANHO= '1 LITRO'

	-- APAGANDO TODA A TABELA
	INSERT INTO PRODUTOS_2 SELECT * FROM PRODUTOS; -- ESTE COMANDO MOSTRA QUE É POSSIVEL TRANSFERIR TODOS OS REGISTROS DE UMA TABELA PARA OUTRA

	DELETE * FROM PRODUTOS_2 --APAGANDO UMA TABELA