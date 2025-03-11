CREATE DATABASE dryFlow;
USE dryFlow;

CREATE TABLE Empresas (
    id_Empresa INT PRIMARY KEY AUTO_INCREMENT,
    CNPJ VARCHAR(18) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    localizacao TEXT,
    nomeEmpresa VARCHAR(255) NOT NULL,
    emailEmpresa VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    nomeUsuario VARCHAR(255) NOT NULL,
    emailUsuario VARCHAR(255) UNIQUE NOT NULL,
    senhaUsuario VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id_Empresa) ON DELETE CASCADE
);

CREATE TABLE Sensores (
    id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    localizacaoSensor TEXT NOT NULL,
    dataInstalacao DATE NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id_Empresa) ON DELETE CASCADE
);

CREATE TABLE Leituras (
    id_leitura INT PRIMARY KEY AUTO_INCREMENT,
    id_sensor INT,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    nivelUmidade DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_sensor) REFERENCES Sensores(id_sensor) ON DELETE CASCADE
);

INSERT INTO Empresas (CNPJ, telefone, localizacao, nomeEmpresa, emailEmpresa, senha) VALUES
('12.345.678/0001-90', '(11) 98765-4321', 'São Paulo - SP', 'TechCompressores', 'contato@techcompressores.com', 'senha123'),
('98.765.432/0001-21', '(21) 99876-5432', 'Rio de Janeiro - RJ', 'UmidAir', 'suporte@umidair.com', 'senha456');

INSERT INTO Usuarios (id_empresa, nomeUsuario, emailUsuario, senhaUsuario) VALUES
(1, 'Carlos Silva', 'carlos@techcompressores.com', '12345'),
(1, 'Ana Souza', 'ana@techcompressores.com', '54321'),
(2, 'Marcos Lima', 'marcos@umidair.com', '98765');

INSERT INTO Sensores (id_empresa, localizacaoSensor, dataInstalacao) VALUES
(1, 'Oficina Central - SP', '2024-03-01'),
(1, 'Filial Norte - SP', '2024-03-05'),
(2, 'Unidade RJ', '2024-02-28');

INSERT INTO Leituras (id_sensor, dataHora, nivelUmidade) VALUES
(1, '2024-03-10 08:30:00', 45.6),
(1, '2024-03-10 12:45:00', 48.2),
(2, '2024-03-10 09:00:00', 52.1),
(3, '2024-03-10 10:15:00', 47.8);

SELECT * FROM Empresas;

SELECT u.* FROM Usuarios u
JOIN Empresas e ON u.id_empresa = e.id_Empresa
WHERE e.nomeEmpresa LIKE '%Tech%';

SELECT * FROM Sensores
WHERE dataInstalacao BETWEEN '2024-03-01' AND '2024-03-31';

SELECT * FROM Leituras
WHERE nivelUmidade > 50;

SELECT * FROM Usuarios
WHERE nomeUsuario LIKE 'A%';

SELECT * FROM Sensores
WHERE localizacaoSensor LIKE '%RJ%';

SELECT * FROM Leituras
WHERE dataHora BETWEEN '2024-03-10 08:00:00' AND '2024-03-10 12:00:00';