CREATE DATABASE IF NOT EXISTS api_produto;
USE api_produto;

DROP TABLE IF EXISTS produto;
CREATE TABLE produto(
  pro_id INT NOT NULL PRIMARY KEY auto_increment,
  pro_descricao VARCHAR(50) NULL,
  pro_preco DECIMAL(12,2) NOT NULL DEFAULT 0.00,
  pro_validade DATE NOT NULL
);

INSERT INTO `produto` (`pro_descricao`, `pro_preco`, `pro_validade`) VALUES
('Batata', '2.39', '2021-06-28'),
('Cebola', '1.19', '2021-07-15'),
('Arroz', '21.75', '2021-09-11'),
('Feijão', '8.29', '2021-10-14'),
('Abacate', '9.68', '2021-12-04'),
('Cenoura', '2.15', '2021-05-24'),
('Tomate', '3.98', '2021-05-01');