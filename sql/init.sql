-- Criação de Tabelas Simples para Demonstração de Métricas

-- Tabela de Clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Tabela de Pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES clientes(id),
    valor DECIMAL(10, 2),
    criado_em TIMESTAMP DEFAULT NOW()
);

-- Inserindo Clientes
INSERT INTO clientes (nome, email) VALUES
('Ana Souza', 'ana@example.com'),
('Carlos Mendes', 'carlos@example.com'),
('Fernanda Lima', 'fernanda@example.com');

-- Inserindo Pedidos
INSERT INTO pedidos (cliente_id, valor) VALUES
(1, 320.00),
(2, 150.50),
(1, 75.90),
(3, 220.00);

-- Consulta simples que você pode executar depois:
-- SELECT c.nome, p.valor, p.criado_em
-- FROM pedidos p JOIN clientes c ON p.cliente_id = c.id;
