CREATE DATABASE concessionaria;
USE concessionaria;

CREATE TABLE veiculos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(42) NOT NULL,
	modelo VARCHAR(25) NOT NULL,
    ano INT,
    cor VARCHAR(20),
    preco DECIMAL(10,2)
);


CREATE TABLE vendedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
	telefone VARCHAR(25) NOT NULL UNIQUE,
    salario DECIMAL(6,2)
);



CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
	telefone VARCHAR(25) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
    endereco VARCHAR(50),
    data_nascimento DATE
);


CREATE TABLE vendas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	data_venda DATETIME NOT NULL,
	id_veiculo INT NOT NULL,
    FOREIGN KEY(id_veiculo) REFERENCES veiculos(id),
	id_vendedor INT NOT NULL,
    FOREIGN KEY(id_vendedor) REFERENCES vendedores(id),
	id_cliente INT NOT NULL,
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

INSERT INTO veiculos (marca, modelo, ano, cor, preco)
	VALUES
		('Chevrolet', 'Onix LT', 2020, 'Preto', 60000),
		('Volkswagen', 'Gol G6', 2018, 'Branco', 42000),
		('Fiat', 'Argo Drive', 2021, 'Prata', 58000),
		('Ford', 'Ka SE', 2019, 'Vermelho', 45000),
		('Renault', 'Kwid Zen', 2022, 'Azul', 52000),
		('Hyundai', 'HB20 Comfort', 2020, 'Cinza', 59000),
		('Toyota', 'Corolla GLi', 2019, 'Preto', 85000),
		('Honda', 'Civic EX', 2018, 'Branco', 78000),
		('Peugeot', '208 Active', 2021, 'Vermelho', 61000),
		('Nissan', 'Versa Sense', 2022, 'Prata', 70000);


INSERT INTO vendedores (nome, telefone, salario)
	VALUES
		('Carlos Alberto', '(11) 91234-5678', 3500.00),
		('Juliana Souza', '(11) 99876-5432', 4200.50);
        
INSERT INTO clientes (nome, telefone, email, endereco, data_nascimento)
	VALUES
		('Ana Beatriz', '(11) 91111-2222', 'ana.b@gmail.com', 'Rua das Flores, 100', '1990-05-15'),
		('Marcos Lima', '(11) 92222-3333', 'marcos.lima@hotmail.com', 'Av. Brasil, 200', '1985-10-20'),
		('Fernanda Costa', '(11) 93333-4444', 'fernanda.costa@yahoo.com', 'Rua das Palmeiras, 45', '1993-08-03'),
		('João Pedro', '(11) 94444-5555', 'joaopedro123@gmail.com', 'Travessa Central, 12', '2000-01-12'),
		('Patrícia Almeida', '(11) 95555-6666', 'patricia.almeida@uol.com.br', 'Alameda Santos, 300', '1988-12-07');

INSERT INTO vendas (data_venda, id_veiculo, id_vendedor,id_cliente)
	VALUES
		('2025-04-24 10:28:00', 4, 2, 5),
        ('2025-04-23 17:50:00', 1, 2, 1),
        ('2025-04-22 07:00:00', 8, 1, 5);
        
SELECT * FROM veiculos;
SELECT * FROM vendedores;
SELECT * FROM clientes;
SELECT * FROM vendas;




SELECT marca,modelo,preco FROM veiculos;

SELECT marca,modelo,preco FROM veiculos WHERE preco < 50000;
SELECT * FROM veiculos WHERE ano >= 2020;

UPDATE veiculos SET preco = 56500 WHERE id = 3;

DELETE FROM veiculos WHERE id = 10;