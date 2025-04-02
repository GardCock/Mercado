create database Mercado;
use Mercado;

create table Setor(
	id int auto_increment primary key,
    nome VARCHAR(100)
);

create table Funcionario(
	id int auto_increment primary key,
    nome VARCHAR(100),
	cpf varchar(11),
    tel varchar(11),
    setor_id int,
    foreign key (setor_id) references Setor(id)
);

create table Categoria(
	id int auto_increment primary key,
    nome varchar(100)
);

create table Produto(
	id int auto_increment primary key,
    nome VARCHAR(100),
    marca varchar(100),
    validade date,
    lote date,
    preco decimal(6, 2),
    quantidade int,
    categoria_id int,
    foreign key (categoria_id) references Categoria(id)
);


create table Vendas(
	id int auto_increment primary key,
    produto_id int,
    data date,
    quantidade int,
    funcionario_id int,
    foreign key (produto_id) references Produto(id),
    foreign key (funcionario_id) references Funcionario(id)
);

-- Inserindo dados na tabela Setor
INSERT INTO Setor (nome) VALUES ('Alimentos');
INSERT INTO Setor (nome) VALUES ('Bebidas');
INSERT INTO Setor (nome) VALUES ('Higiene');

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('João Silva', '12345678901', '11987654321', 1);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Maria Oliveira', '10987654321', '11912345678', 2);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Carlos Santos', '98765432100', '11876543210', 1);

-- Inserindo dados na tabela Categoria
INSERT INTO Categoria (nome) VALUES ('Laticínios');
INSERT INTO Categoria (nome) VALUES ('Bebidas Alcoólicas');
INSERT INTO Categoria (nome) VALUES ('Produtos de Limpeza');

-- Inserindo dados na tabela Produto
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Leite', 'Itambé', '2023-12-31', '2023-01-21', 4.50, 100, 1);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Cerveja', 'Skol', '2024-06-30', '2023-02-10', 2.50, 200, 2);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Detergente', 'Ypê', '2025-01-01', '2023-03-23', 3.00, 50, 3);

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (1, '2023-10-01', 2, 1);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (2, '2023-10-02', 3, 2);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (3, '2023-10-03', 1, 3);

INSERT INTO Setor (nome) VALUES ('Recursos Humanos');
INSERT INTO Setor (nome) VALUES ('Vendas');
INSERT INTO Setor (nome) VALUES ('Financeiro');
INSERT INTO Setor (nome) VALUES ('TI');
INSERT INTO Setor (nome) VALUES ('Marketing');
INSERT INTO Setor (nome) VALUES ('Logística');
INSERT INTO Setor (nome) VALUES ('Atendimento ao Cliente');

INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Ana Silva', '12345678901', '11987654321', 1);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('João Souza', '23456789012', '11976543210', 2);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Maria Oliveira', '34567890123', '11876543210', 3);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Pedro Santos', '45678901234', '11765432109', 4);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Lucas Pereira', '56789012345', '11654321098', 5);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Juliana Costa', '67890123456', '11543210987', 6);
INSERT INTO Funcionario (nome, cpf, tel, setor_id) VALUES ('Fernanda Lima', '78901234567', '11432109876', 7);

INSERT INTO Categoria (nome) VALUES ('Eletrônicos');
INSERT INTO Categoria (nome) VALUES ('Alimentos');
INSERT INTO Categoria (nome) VALUES ('Roupas');
INSERT INTO Categoria (nome) VALUES ('Móveis');
INSERT INTO Categoria (nome) VALUES ('Eletrodomésticos');
INSERT INTO Categoria (nome) VALUES ('Livros');
INSERT INTO Categoria (nome) VALUES ('Brinquedos');

INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Smartphone', 'Marca A', '2025-12-31', '2023-01-01', 1500.00, 10, 1);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Arroz', 'Marca B', '2024-05-15', '2023-02-01', 20.00, 100, 2);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Camiseta', 'Marca C', '2023-08-01', '2023-03-01', 40.00, 50, 3);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Sofá', 'Marca D', '2028-12-31', '2023-04-01', 1200.00, 5, 4);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Geladeira', 'Marca E', '2027-11-30', '2023-05-01', 2500.00, 3, 5);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Livro de Ficção', 'Marca F', '2026-07-20', '2023-06-01', 30.00, 200, 6);
INSERT INTO Produto (nome, marca, validade, lote, preco, quantidade, categoria_id) VALUES ('Boneca', 'Marca G', '2025-09-15', '2023-07-01', 50.00, 150, 7);

INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (1, '2023-10-01', 2, 1);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (2, '2023-10-02', 5, 2);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (3, '2023-10-03', 10, 3);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (4, '2023-10-04', 1, 4);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (5, '2023-10-05', 1, 5);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (6, '2023-10-06', 3, 6);
INSERT INTO Vendas (produto_id, data, quantidade, funcionario_id) VALUES (7, '2023-10-07', 4, 7);

SELECT * FROM Funcionario;
