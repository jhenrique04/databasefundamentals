-- Inserindo dados na tabela cliente
INSERT INTO cliente (id, nome) VALUES ('C001', 'Jose Henrique');
INSERT INTO cliente (id, nome) VALUES ('C002', 'Ze Henrique');
INSERT INTO cliente (id, nome) VALUES ('C003', 'Universidade Federal do Ceara');
INSERT INTO cliente (id, nome) VALUES ('C004', 'Empresa 2');

-- Inserindo dados na tabela cliente_particular
INSERT INTO cliente_particular (id, cpf) VALUES ('C001', '123.456.789-00');
INSERT INTO cliente_particular (id, cpf) VALUES ('C002', '987.654.321-00');

-- Inserindo dados na tabela cliente_empresa
INSERT INTO cliente_empresa (id, cnpj) VALUES ('C003', '12.345.678/0001-99');
INSERT INTO cliente_empresa (id, cnpj) VALUES ('C004', '98.765.432/0001-99');

-- Inserindo dados na tabela taxi
INSERT INTO taxi (placa, marca, modelo, anofab) VALUES ('ABC1234', 'Toyota', 'Corolla', 2018);
INSERT INTO taxi (placa, marca, modelo, anofab) VALUES ('DEF5678', 'Fiat', 'Palio', 2017);
INSERT INTO taxi (placa, marca, modelo, anofab) VALUES ('GHI9012', 'Ford', 'Fiesta', 2019);

-- Inserindo dados na tabela corrida
INSERT INTO corrida (cliid, placa, dataPedido) VALUES ('C001', 'ABC1234', '2023-07-20');
INSERT INTO corrida (cliid, placa, dataPedido) VALUES ('C002', 'DEF5678', '2023-07-21');
INSERT INTO corrida (cliid, placa, dataPedido) VALUES ('C003', 'GHI9012', '2023-07-22');

-- Inserindo dados na tabela motorista
INSERT INTO motorista (cpf, nome, numeroCorridas, avaliacao) VALUES ('111.222.333-44', 'Motorista da Silva', 150, 4.5);
INSERT INTO motorista (cpf, nome, numeroCorridas, avaliacao) VALUES ('555.666.777-88', 'Motorista da Silvio', 200, 4.7);

-- Atualizando o nome de um cliente
UPDATE cliente SET nome = 'Cliente da Silva' WHERE id = 'C001';

-- Atualizando a avaliação de um motorista
UPDATE motorista SET avaliacao = 4.8 WHERE cpf = '111.222.333-44';

-- Deletando um cliente específico
DELETE FROM cliente_empresa WHERE id = 'C004';
DELETE FROM cliente WHERE id = 'C004';

-- Deletando uma corrida específica
DELETE FROM corrida WHERE cliid = 'C002' AND placa = 'DEF5678' AND dataPedido = '2023-07-21';

-- Selecionando todos os clientes por ordem de id
SELECT * FROM cliente ORDER BY id;

-- Exibindo todos os motoristas por ordem de CPF
SELECT * FROM motorista ORDER BY cpf;

-- Exibindo todos os táxis por ordem de ano de fabricação
SELECT * FROM taxi ORDER BY anofab;

-- Selecionando todas as corridas pedidas por um cliente específico
SELECT * FROM corrida WHERE cliid = 'C001';

-- Selecionando todos os táxis de uma determinada marca de carro
SELECT * FROM taxi WHERE marca = 'Toyota';

-- Contando o número de corridas realizadas por um determinado motorista
SELECT numeroCorridas FROM motorista WHERE cpf = '555.666.777-88';

-- Exibindo a média de avaliações dos motoristas
SELECT AVG(avaliacao) AS media_avaliacao FROM motorista;
