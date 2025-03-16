--  ..........................criando banco de dados..................................
CREATE DATABASE DYFLOW;
-- ..........................usando banco de dados..................................
USE DYFLOW;

-- ..........................criando tabela de representantes..................................
CREATE TABLE Representantes(
    id_representante INT AUTO_INCREMENT PRIMARY KEY, -- chave primária
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_fechamento DATE NOT NULL,
    cliente ENUM('Sim', 'Não') NOT NULL DEFAULT 'Não'
);

-- ..........................criando tabela de serviços..................................
CREATE TABLE Servicos(
    id_servico INT AUTO_INCREMENT PRIMARY KEY, -- chave primária
    quantidade_compressores INT NOT NULL,
    quantidade_sensores INT NOT NULL,
    data_instalacao DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    metodo_pagamento ENUM('Boleto', 'Cartão', 'Dinheiro', 'Pix') NOT NULL,
    status_pagamento ENUM('Quitado', 'Não Quitado') NOT NULL DEFAULT 'Não Quitado'
);

-- ..........................criando tabela de empresas clientes..................................
CREATE TABLE Empresas(
    id_empresa INT AUTO_INCREMENT PRIMARY KEY, -- chave primária
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    representante INT NOT NULL,
    localizacao VARCHAR(255) NOT NULL,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    id_servico INT NOT NULL,
    -- chave estrangeira referenciando Representantes
    FOREIGN KEY (representante) REFERENCES Representantes(id_representante) ,
    -- chave estrangeira referenciando Servicos
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);


