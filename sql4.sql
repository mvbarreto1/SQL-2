CREATE DATABASE concessionaria;
Use concessionaria; 

CREATE TABLE IF NOT EXISTS veiculos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    cor VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2),
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS vendedores (
	    ID INT AUTO_INCREMENT,
        nome VARCHAR(50) NOT NULL,
        telefone VARCHAR(22) NOT NULL UNIQUE,
        salario DECIMAL (4,2) NOT NULL, 
		PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS clientes (
    ID INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(22) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    endereco VARCHAR(255),
    data_nascimento DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS vendas (
    ID INT AUTO_INCREMENT,
    data_venda DATETIME NOT NULL,
    id_veiculo INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(ID),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(ID),
    FOREIGN KEY (id_cliente) REFERENCES clientes(ID)
);

INSERT INTO veiculos (marca, modelo, ano, cor, preco) VALUES
('Toyota', 'Corolla', 2020, 'Prata', 85000.00),
('Honda', 'Civic', 2019, 'Preto', 79000.00),
('Ford', 'Ka', 2018, 'Branco', 40000.00),
('Chevrolet', 'Onix', 2021, 'Azul', 72000.00),
('Hyundai', 'HB20', 2022, 'Cinza', 75000.00),
('Volkswagen', 'Gol', 2020, 'Vermelho', 62000.00),
('Fiat', 'Argo', 2019, 'Branco', 61000.00),
('Renault', 'Sandero', 2021, 'Preto', 67000.00),
('Peugeot', '208', 2020, 'Amarelo', 69000.00),
('Nissan', 'Versa', 2022, 'Azul', 79000.00);

INSERT INTO clientes (nome, telefone, email, endereco, data_nascimento) VALUES
('João Souza', '11988880001', 'joao@email.com', 'Rua A, 123', '1990-04-23'),
('Maria Lima', '11988880002', 'maria@email.com', 'Rua B, 456', '1985-07-15'),
('Pedro Santos', '11988880003', 'pedro@email.com', 'Rua C, 789', '2000-10-02'),
('Ana Paula', '11988880004', 'anapaula@email.com', 'Rua D, 321', '1992-12-01'),
('Lucas Rocha', '11988880005', 'lucas@email.com', 'Rua E, 654', '1997-03-30');

INSERT INTO vendedores (nome, telefone) VALUES
('Carlos Silva', '11999990001'),
('Ana Oliveira', '11999990002');

INSERT INTO vendas (data_venda, id_veiculo, id_vendedor, id_cliente) VALUES
('2024-03-15', 1, 1, 1),
('2024-04-10', 4, 2, 3),
('2024-04-20', 7, 1, 5);

SELECT * FROM veiculos;
