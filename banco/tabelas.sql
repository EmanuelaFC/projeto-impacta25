-- Criar o banco de dados se não existir
CREATE DATABASE IF NOT EXISTS ativismo_ambiental;

-- Selecionar o banco de dados para uso
USE ativismo_ambiental;

-- Criar tabela de usuários
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    interesse VARCHAR(255),
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
