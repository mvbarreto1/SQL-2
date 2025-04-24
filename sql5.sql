CREATE DATABASE IF NOT EXISTS Clientes;
USE Clientes;

CREATE TABLE IF NOT EXISTS Clientes (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    Nome VARCHAR(50) NOT NULL,
    Idade INT,
    Cidade VARCHAR(100)
);


INSERT INTO Clientes (Nome, Idade, Cidade) VALUES
('Ana Silva', 30, 'São Paulo'),
('Carlos Mendes', 45, 'Rio de Janeiro'),
('Juliana Souza', 28, 'Belo Horizonte'),
('Fernando Lima', 35, 'Curitiba');

SELECT * FROM Clientes;