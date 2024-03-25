CREATE TABLE TB_CLIENTE (
    id_cliente CHAR(4) PRIMARY KEY,
    nm_cliente VARCHAR2(50),
    email_cliente VARCHAR2(50),
    nr_rg NUMBER(15),
    nr_cep NUMBER(15),
    ds_rua VARCHAR2(50),
    ds_municipio VARCHAR2(50),
    sg_estado VARCHAR2(50)
    );

insert into TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1111, 'KARLOS', 'KARLAO@GMAIL.com', 123412321, 23423, 'RUA dos alfeneros', 'SAO PAULO', 'SP'),
    VALUES (1112, 'Beatriz', 'BEAT@GMAIL.com', 12373631, 363523, 'RUA NAO SE ABATA', 'SAO PAULO', 'SP');

INSERT INTO TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1001, 'João Silva', 'joao@gmail.com', 123456789012345, 12345, 'Rua A', 'Cidade A', 'SP');

INSERT INTO TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1002, 'Maria Oliveira', 'maria@gmail.com', 987654321098765, 54321, 'Rua B', 'Cidade B', 'RJ');

INSERT INTO TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1003, 'Carlos Santos', 'carlos@gmail.com', 456789012345678, 67890, 'Rua C', 'Cidade C', 'MG');
    
INSERT INTO TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1004, 'Fernanda Pereira', 'fernanda@gmail.com', 654321098765432, 98765, 'Rua D', 'Cidade D', 'SP');

INSERT INTO TB_CLIENTE (id_cliente, nm_cliente, email_cliente, nr_rg, nr_cep, ds_rua, ds_municipio, sg_estado)
    VALUES (1005, 'Rodrigo Costa', 'rodrigo@gmail.com', 789012345678901, 56789, 'Rua E', 'Cidade E', 'RJ');

INSERT INTO

describe TB_CLIENTE

select * from TB_CLIENTE;
-- _________________________________________________________________________________________________________

CREATE TABLE TB_TEL_CLIENTE (
    id_cliente CHAR(4),
    ddd NUMBER(5),
    cod_pais NUMBER(5),
    nr_telefone NUMBER(9),
    CONSTRAINT fk_cliente_tel
        FOREIGN KEY (id_cliente)
        REFERENCES TB_CLIENTE(id_cliente));

insert into TB_TEL_CLIENTE (id_cliente ,ddd ,cod_pais, nr_telefone)
   VALUES (1111, 11, 55, 91891282);

INSERT INTO TB_TEL_CLIENTE (id_cliente, ddd, cod_pais, nr_telefone)
VALUES (1001, 11, 55, 987654321);

INSERT INTO TB_TEL_CLIENTE (id_cliente, ddd, cod_pais, nr_telefone)
VALUES (1002, 21, 55, 876543210);

INSERT INTO TB_TEL_CLIENTE (id_cliente, ddd, cod_pais, nr_telefone)
VALUES (1003, 31, 55, 765432109);

INSERT INTO TB_TEL_CLIENTE (id_cliente, ddd, cod_pais, nr_telefone)
VALUES (1004, 11, 55, 654321098);

INSERT INTO TB_TEL_CLIENTE (id_cliente, ddd, cod_pais, nr_telefone)
VALUES (1005, 21, 55, 543210987);


describe TB_TEL_CLIENTE

select * from TB_TEL_CLIENTE;


-- _________________________________________________________________________________________________________

CREATE TABLE TB_PRODUTO (
    id_produto CHAR(4) PRIMARY KEY,
    id_pedido CHAR(4),
    id_fornecedor CHAR(4),
    nm_produto VARCHAR2(50),
    vl_preco NUMBER(7)
    );

CREATE TABLE TB_FORNECEDOR (
  id_fornecedor CHAR(4) PRIMARY KEY,
  nm_fornecedor VARCHAR(50),
  ds_endereco VARCHAR(55),
  nr_telefone VARCHAR(50),
  email_fornecedor VARCHAR(50)  
    );
    
ALTER TABLE TB_PRODUTO
        ADD CONSTRAINT FK_TB_PRODUTO_TB_FORNECEDOR
            FOREIGN KEY (id_fornecedor)
                REFERENCES TB_FORNECEDOR (id_fornecedor);



-- Inserir dados fictícios na tabela TB_PRODUTO
INSERT INTO TB_PRODUTO (id_produto, id_pedido, id_fornecedor, nm_produto, vl_preco)
                VALUES ('P001', 'AA11', 'F001', 'Molho de Tomate Especial', 500);

INSERT INTO TB_PRODUTO (id_produto, id_pedido, id_fornecedor, nm_produto, vl_preco)
                VALUES ('P002', 'AA12', 'F002', 'Pepperoni Premium', 800);

INSERT INTO TB_PRODUTO (id_produto, id_pedido, id_fornecedor, nm_produto, vl_preco)
                VALUES ('P003', 'AA13', 'F003', 'Massa de Pizza Artesanal', 1000);

INSERT INTO TB_PRODUTO (id_produto, id_pedido, id_fornecedor, nm_produto, vl_preco)
                VALUES ('P004', 'AA14', 'F004', 'Queijo Gorgonzola', 1500);

INSERT INTO TB_PRODUTO (id_produto, id_pedido, id_fornecedor, nm_produto, vl_preco)
                VALUES ('p005', 'AA15', 'F005', 'Molho Pesto', 1200);


INSERT INTO TB_FORNECEDOR (id_fornecedor, nm_fornecedor, ds_endereco, nr_telefone, email_fornecedor)
VALUES ('F001', 'Distribuidora de Ingredientes', 'Rua dos Ingredientes, 123', '111-222-3333', 'contato@distribuidora.com');

INSERT INTO TB_FORNECEDOR (id_fornecedor, nm_fornecedor, ds_endereco, nr_telefone, email_fornecedor)
VALUES ('F002', 'Fornecedora de Carnes', 'Avenida das Carnes, 456', '444-555-6666', 'contato@carnes.com');

INSERT INTO TB_FORNECEDOR (id_fornecedor, nm_fornecedor, ds_endereco, nr_telefone, email_fornecedor)
VALUES ('F003', 'Distribuidora de Massas', 'Travessa das Massas, 789', '777-888-9999', 'contato@massas.com');

INSERT INTO TB_FORNECEDOR (id_fornecedor, nm_fornecedor, ds_endereco, nr_telefone, email_fornecedor)
VALUES ('F004', 'Fornecedora de Queijos', 'Alameda dos Queijos, 567', '222-333-4444', 'contato@queijos.com');

INSERT INTO TB_FORNECEDOR (id_fornecedor, nm_fornecedor, ds_endereco, nr_telefone, email_fornecedor)
VALUES ('F005', 'Distribuidora de Vegetais', 'Praça dos Vegetais, 890', '555-666-7777', 'contato@vegetais.com');

    describe TB_FORNECEDOR
    describe TB_PrODUTO
    
SELECT * FROM TB_PRODUTO;
SELECT * FROM TB_FORNECEDOR;

-- ________________________________________________________________________________________________________________________________


CREATE TABLE TB_PEDIDO (
    id_pedido CHAR(4) PRIMARY KEY,
    id_produto CHAR(4),
    id_cliente CHAR(4),
    id_funcionario CHAR(4));
    
ALTER TABLE TB_PEDIDO
    ADD CONSTRAINT FK_TB_FORNECEDOR_TB_PEDIDO
        FOREIGN KEY (id_produto) REFERENCES TB_PRODUTO (id_produto);

ALTER TABLE TB_PEDIDO
    ADD CONSTRAINT FK_TB_CLIENTE_TB_PEDIDO
        FOREIGN KEY (id_cliente) REFERENCES TB_CLIENTE (id_cliente);

ALTER TABLE TB_PEDIDO
    ADD CONSTRAINT FK_TB_PEIDDO_COM_TBFUNCIONARIO
        FOREIGN KEY (id_funcionario) REFERENCES TB_FUNCIONARIO (id_funcionario);


INSERT INTO TB_PEDIDO ( id_pedido, id_produto, id_cliente, id_funcionario)
                VALUES ('AA11', 'P001',1111, 773618);

INSERT INTO TB_PEDIDO ( id_pedido, id_produto, id_cliente, id_funcionario) 
              VALUES ('AA12', 'P002',1112,773619);

INSERT INTO TB_PEDIDO ( id_pedido, id_produto, id_cliente, id_funcionario) 
              VALUES ('AA13', 'P003',1001,773620);

INSERT INTO TB_PEDIDO ( id_pedido, id_produto, id_cliente, id_funcionario) 
               VALUES ('AA14', 'P004',1002,773621);
    
INSERT INTO TB_PEDIDO ( id_pedido, id_produto, id_cliente, id_funcionario) 
               VALUES ('AA15','P005',1003,773622);

1004
1005

describe TB_PEDIDO
SELECT * FROM TB_PEDIDO;

-- ________________________________________________________________________________________________________________________________

CREATE TABLE TB_ITEM_PRODUTO 
(
    id_pedido CHAR(4),
    id_produto CHAR(4),
    ds_produto VARCHAR2(50),
    dt_pedido DATE,
    vl_produto NUMBER(15)
);


ALTER TABLE TB_ITEM_PRODUTO 
    ADD CONSTRAINT FK_TB_PEDIDO_TB_ITEM
        FOREIGN KEY (id_pedido)
            REFERENCES TB_PEDIDO (id_pedido);
            
ALTER TABLE TB_ITEM_PRODUTO 
    ADD CONSTRAINT FK_TB_PRODUTO_TB_ITEM
        FOREIGN KEY (id_produto)
            REFERENCES TB_PRODUTO (id_produto);
            
INSERT INTO TB_ITEM_PRODUTO (id_pedido, id_produto, ds_produto, dt_pedido, vl_produto)
VALUES ('AA11', 'P001', 'Molho de Tomate Especial', TO_DATE('2023-11-22', 'YYYY-MM-DD'), 5.00);

INSERT INTO TB_ITEM_PRODUTO (id_pedido, id_produto, ds_produto, dt_pedido, vl_produto)
VALUES ('AA12', 'P002', 'Pepperoni Premium', TO_DATE('2023-11-23', 'YYYY-MM-DD'), 8.00);

INSERT INTO TB_ITEM_PRODUTO (id_pedido, id_produto, ds_produto, dt_pedido, vl_produto)
VALUES ('AA13', 'P003', 'Massa de Pizza Artesanal', TO_DATE('2023-11-24', 'YYYY-MM-DD'), 10.00);

INSERT INTO TB_ITEM_PRODUTO (id_pedido, id_produto, ds_produto, dt_pedido, vl_produto)
VALUES ('AA14', 'P004', 'Queijo Gorgonzola', TO_DATE('2023-11-25', 'YYYY-MM-DD'), 15.00);

INSERT INTO TB_ITEM_PRODUTO (id_pedido, id_produto, ds_produto, dt_pedido, vl_produto)
VALUES ('AA15', 'P005', 'Molho Pesto', TO_DATE('2023-11-26', 'YYYY-MM-DD'), 12.00);

describe TB_ITEM_PRODUTO
SELECT * FROM TB_ITEM_PRODUTO;

            
-- ________________________________________________________________________________________________________________________________

CREATE TABLE TB_FUNCIONARIO
(
    id_funcionario NUMBER(6) CONSTRAINT PK_TB_FUNCIONARIO PRIMARY KEY,
    id_cargo NUMBER(9),
    nm_funcionario VARCHAR2(50),
    email_funcionario VARCHAR2(50),
    sg_estado VARCHAR2(50),
    ds_rua VARCHAR2(50),
    ds_municipio VARCHAR2(50),
    nr_cep NUMBER(15),
    id_salario number(4),
    dt_nasc DATE,
    sexo VARCHAR2(55),
    nr_rg NUMBER(9),
    nr_cpf NUMBER(9)
);

alter table tb_funcionario modify id_cargo number(9);

ALTER TABLE TB_FUNCIONARIO ADD CONSTRAINT FK_ULTIMO_NOIDFUNC FOREIGN KEY (id_salario) REFERENCES TB_SALARIO;
ALTER TABLE TB_FUNCIONARIO ADD CONSTRAINT FK_UN_NOIDFUNC FOREIGN KEY (id_cargo) REFERENCES TB_CARGO;

      
INSERT INTO TB_FUNCIONARIO 

DELETE FROM TB_FUNCIONARIO
WHERE id_cargo =123123412;

INSERT INTO TB_FUNCIONARIO 
VALUES (773618,221231, 'Ana Silva', 'ana@gmail.com', 'SP', 'Rua A', 'Cidade A', 123456, 9922, TO_DATE('1990-03-15', 'YYYY-MM-DD'), 'Feminino', 987654321, 123456789);

INSERT INTO TB_FUNCIONARIO 
VALUES (773619,221223, 'Carlos Santos', 'carlos@gmail.com', 'RJ', 'Rua B', 'Cidade B', 456789, 9923, TO_DATE('1985-07-20', 'YYYY-MM-DD'), 'Masculino', 876543210, 234567890);

INSERT INTO TB_FUNCIONARIO 
VALUES (773620,221224, 'Julia Oliveira', 'julia@gmail.com', 'MG', 'Rua C', 'Cidade C', 789012,  9924, TO_DATE('1995-01-10', 'YYYY-MM-DD'), 'Feminino', 765432109, 345678901);

INSERT INTO TB_FUNCIONARIO 
VALUES (773621,221225, 'Pedro Almeida', 'pedro@gmail.com', 'SP', 'Rua D', 'Cidade D', 345678,  9925, TO_DATE('1988-11-05', 'YYYY-MM-DD'), 'Masculino', 654321098, 456789012);

INSERT INTO TB_FUNCIONARIO 
VALUES (773622, 221226, 'Mariana Lima', 'mariana@gmail.com', 'RJ', 'Rua E', 'Cidade E', 567890, 9926, TO_DATE('1992-09-25', 'YYYY-MM-DD'), 'Feminino', 543210987, 567890123);

    describe tb_funcionario;
SELECT * FROM TB_FUNCIONARIO; 
 
--_______________________________________________________________________________________________________________________
CREATE TABLE TB_TEL_FUNCIONARIO 
(
    id_funcionario NUMBER(6),
    nr_tel_01 NUMBER(15),
    nr_tel_02 NUMBER(15),
    nr_tel_03 NUMBER(15)
);
alter table TB_TEL_FUNCIONARIO 
modify id_funcionario NUMBER(6);
describe TB_TEL_FUNCIONARIO ;

ALTER TABLE TB_TEL_FUNCIONARIO ADD CONSTRAINT PK_TB_TEL_FUNC_FUNC FOREIGN KEY (id_funcionario) REFERENCES TB_FUNCIONARIO;

-- Inserir dados fictícios na tabela TB_TEL_FUNCIONARIO
INSERT INTO TB_TEL_FUNCIONARIO (id_funcionario, nr_tel_01, nr_tel_02, nr_tel_03)
VALUES (773618, 123456789, 987654321, 555555555);

INSERT INTO TB_TEL_FUNCIONARIO (id_funcionario, nr_tel_01, nr_tel_02, nr_tel_03)
VALUES (773619, 111111111, 222222222, 333333333);

INSERT INTO TB_TEL_FUNCIONARIO (id_funcionario, nr_tel_01, nr_tel_02, nr_tel_03)
VALUES (773620, 444444444, 555555555, 666666666);

INSERT INTO TB_TEL_FUNCIONARIO (id_funcionario, nr_tel_01, nr_tel_02, nr_tel_03)
VALUES (773621, 777777777, 888888888, 999999999);

INSERT INTO TB_TEL_FUNCIONARIO (id_funcionario, nr_tel_01, nr_tel_02, nr_tel_03)
VALUES (773622, 111122223, 333344445, 555566667);


DESCRIBE TB_TEL_FUNCIONARIO
SELECT * FROM TB_TEL_FUNCIONARIO;

-- ________________________________________________________________________________________________________________________________

CREATE TABLE TB_SALARIO
(
    id_salario NUMBER(4),
    id_cargo NUMBER(9),
    vl_salario NUMBER(10,5)
);

ALTER TABLE TB_SALARIO ADD CONSTRAINT PK_SAL PRIMARY KEY (id_salario);
ALTER TABLE TB_SALARIO ADD CONSTRAINT FK_DO_CARGO FOREIGN KEY (id_cargo) REFERENCES TB_CARGO;

ALTER TABLE TB_SALARIO
DROP CONSTRAINT FK_DO_CARGO;

INSERT INTO TB_SALARIO (id_salario,id_cargo,vl_salario)
    VALUES (9922,221222,4000);

INSERT INTO TB_SALARIO (id_salario,id_cargo,vl_salario)
    VALUES (9923,221223,4000);

INSERT INTO TB_SALARIO (id_salario,id_cargo,vl_salario)
    VALUES (9924,221224,3000);    
    
INSERT INTO TB_SALARIO (id_salario,id_cargo,vl_salario)
    VALUES (9925,221225,2000);   

INSERT INTO TB_SALARIO (id_salario,id_cargo,vl_salario)
    VALUES (9926,221226,3000);    
    
    SELECT *
FROM TB_CARGO
WHERE id_cargo = 221222;
    
DESCRIBE TB_SALARIO
SELECT * FROM TB_SALARIO;
DELETE FROM TB_SALARIO
WHERE id_salario = 9922;

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221226, 'Auxiliar de Limpeza', 'Limpeza e Organização');

CREATE TABLE TB_CARGO
(
    id_cargo NUMBER(9),
    nm_cargo VARCHAR2(50),
    ds_cargo VARCHAR2(50)
);

ALTER TABLE TB_CARGO ADD CONSTRAINT PK_SAL_CARGO PRIMARY KEY (id_cargo);

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221222, 'Atendente', 'Atendimento ao Cliente');

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221223, 'Cozinheiro', 'Preparação de Alimentos');

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221224, 'Entregador', 'Entrega de Pedidos');

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221225, 'Gerente', 'Supervisão Geral');

INSERT INTO TB_CARGO (id_cargo, nm_cargo, ds_cargo)
VALUES (221226, 'Auxiliar de Limpeza', 'Limpeza e Organização');

describe TB_CARGO
SELECT * FROM TB_CARGO;


commit

-- Listar todos os pedidos feitos por um cliente específico:
SELECT * FROM TB_PEDIDO WHERE id_cliente = '1111';

--Listar os funcionários e seus salários:
SELECT f.nm_funcionario, s.vl_salario
FROM TB_FUNCIONARIO f
JOIN TB_SALARIO s ON f.id_salario = s.id_salario;

--Listar todos os fornecedores e seus produtos
SELECT f.nm_fornecedor, p.nm_produto
FROM TB_FORNECEDOR f
JOIN TB_PRODUTO p ON f.id_fornecedor = p.id_fornecedor;

--Verificar a disponibilidade de um produto no estoque:
SELECT p.nm_produto, COUNT(ip.id_produto) AS quantidade_em_estoque
FROM TB_PRODUTO p
LEFT JOIN TB_ITEM_PRODUTO ip ON p.id_produto = ip.id_produto
GROUP BY p.nm_produto;

-- calcular a media dos precos dos produtos
SELECT AVG(vl_preco) AS media_preco FROM TB_PRODUTO;

--Listar todos os funcionários ordenados por cargo:
SELECT f.nm_funcionario, c.nm_cargo
FROM TB_FUNCIONARIO f
JOIN TB_CARGO c ON f.id_cargo = c.id_cargo
ORDER BY c.nm_cargo, f.nm_funcionario;

--Encontrar os produtos mais populares (mais pedidos):
SELECT p.nm_produto, COUNT(ip.id_produto) AS total_pedidos
FROM TB_PRODUTO p
JOIN TB_ITEM_PRODUTO ip ON p.id_produto = ip.id_produto
GROUP BY p.nm_produto
ORDER BY total_pedidos DESC;

--Calcular o total gasto por um cliente específico:
SELECT c.nm_cliente, SUM(ip.vl_produto) AS total_gasto
FROM TB_CLIENTE c
JOIN TB_PEDIDO p ON c.id_cliente = p.id_cliente
JOIN TB_ITEM_PRODUTO ip ON p.id_pedido = ip.id_pedido
GROUP BY c.nm_cliente;

--Listar os produtos disponíveis e seus preços:
SELECT p.nm_produto, p.vl_preco
FROM TB_PRODUTO p;







git add banco_de_dados.sql

