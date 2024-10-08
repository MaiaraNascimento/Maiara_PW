-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS projeto;

-- Selecionar o banco de dados
USE projeto;

-- Criação da tabela Alunos
CREATE TABLE IF NOT EXISTS Alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    idade INT,
    email VARCHAR(100),
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserir alguns dados de exemplo na tabela Alunos
INSERT INTO Alunos (nome_aluno, idade, email) VALUES
('João da Silva', 20, 'joao.silva@example.com'),
('Maria Oliveira', 22, 'maria.oliveira@example.com'),
('Carlos Pereira', 19, 'carlos.pereira@example.com');
