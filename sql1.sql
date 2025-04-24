CREATE DATABASE petshop;
USE petshop;

CREATE TABLE donos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) UNIQUE,
    telefone VARCHAR(25) NOT NULL UNIQUE,
    endereco VARCHAR(40)
);


CREATE TABLE pets(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(15) NOT NULL,
    raca VARCHAR(20) NOT NULL,
	id_dono INT NOT NULL,
    FOREIGN KEY (id_dono) REFERENCES donos(id)
);

CREATE TABLE servicos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
	preco DECIMAL(7,2)
);


CREATE TABLE atendimentos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	data_atendimento DATETIME NOT NULL,
	id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pets(id),
	id_servico INT NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servicos(id)
);


INSERT INTO donos (nome, cpf, telefone, endereco)
VALUES
    ('João Silva', '12345678901', '(11) 91111-1111', 'Rua A, 100'),
    ('Maria Oliveira', '23456789012', '(11) 92222-2222', 'Rua B, 200'),
    ('Carlos Souza', '34567890123', '(11) 93333-3333', 'Av. Central, 300'),
    ('Ana Beatriz', '45678901234', '(11) 94444-4444', 'Rua D, 400'),
    ('Fernanda Lima', '56789012345', '(11) 95555-5555', 'Rua E, 500'),
    ('Paulo Mendes', '67890123456', '(11) 96666-6666', 'Rua F, 600');

INSERT INTO pets (nome, especie, raca, id_dono)
VALUES
    ('Bidu', 'Cachorro', 'Poodle', 1),
    ('Mingau', 'Gato', 'Persa', 2),
    ('Thor', 'Cachorro', 'Labrador', 3),
    ('Luna', 'Gato', 'Siamês', 4),
    ('Rex', 'Cachorro', 'Pastor Alemão', 1),
    ('Nina', 'Cachorro', 'Shih-Tzu', 5),
    ('Tobby', 'Cachorro', 'Bulldog', 6),
    ('Mel', 'Gato', 'Angorá', 2);


INSERT INTO servicos (nome, preco)
VALUES
    ('Banho', 50.00),
    ('Tosa', 40.00),
    ('Vacinação', 120.00),
    ('Consulta Veterinária', 150.00),
    ('Hospedagem (diária)', 80.00),
    ('Adoção Assistida', 30.00),
    ('Tratamento de Pulgas', 90.00),
    ('Exame de Sangue', 110.00),
    ('Cirurgia de Esterilização', 300.00),
    ('Consulta de Emergência', 200.00);


INSERT INTO atendimentos (data_atendimento, id_pet, id_servico)
VALUES
    ('2025-04-01 10:00:00', 1, 1),
    ('2025-04-02 11:30:00', 2, 3),
    ('2025-04-03 09:00:00', 3, 4),
    ('2025-04-04 14:15:00', 4, 2),
    ('2025-04-05 16:45:00', 5, 7);


UPDATE servicos SET preco = 45.00 WHERE id = 2;
DELETE FROM pets WHERE id = 7;
SELECT * FROM pets WHERE especie = "Cachorro";
SELECT * FROM servicos WHERE preco > 50;


