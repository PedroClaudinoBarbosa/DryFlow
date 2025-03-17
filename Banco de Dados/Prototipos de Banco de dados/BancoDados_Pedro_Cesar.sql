CREATE DATABASE DryFlow;

USE DryFlow;

-- Tabela Oficinas (Armazena dados das oficinas de pintura)
CREATE TABLE Oficinas (
    idOficina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Tabela Sensores (Registra sensores instalados em cada oficina)
CREATE TABLE Sensores (
    idSensor INT AUTO_INCREMENT PRIMARY KEY,
    idOficina INT NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    dataInstalacao DATE NOT NULL,
    FOREIGN KEY (idOficina) REFERENCES Oficinas(idOficina)
);

-- Tabela Leituras (Guarda as medições de umidade dos sensores)
CREATE TABLE Leituras (
    idLeitura INT AUTO_INCREMENT PRIMARY KEY,
    idSensor INT NOT NULL,
    dataHora DATETIME NOT NULL,
    umidade DECIMAL(5,2) NOT NULL CHECK (umidade >= 0 AND umidade <= 100),
    temperatura DECIMAL(5,2) NOT NULL CHECK (temperatura >= -50 AND temperatura <= 100),
    FOREIGN KEY (idSensor) REFERENCES Sensores(idSensor)
);

-- Tabela Alertas (Registra alertas de alta umidade)
CREATE TABLE Alertas (
    idAlerta INT AUTO_INCREMENT PRIMARY KEY,
    idLeitura INT NOT NULL,
    mensagem VARCHAR(255) NOT NULL,
    nivel VARCHAR(20) NOT NULL CHECK (nivel IN ('Baixo', 'Médio', 'Alto', 'Crítico')),
    FOREIGN KEY (idLeitura) REFERENCES Leituras(idLeitura)
);