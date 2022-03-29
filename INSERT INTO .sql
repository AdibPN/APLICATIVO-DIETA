

INSERT INTO categoria_alimento (descricao) VALUES ("Carboidratos");
INSERT INTO categoria_alimento (descricao) VALUES ("Verduras e Legumes");
INSERT INTO categoria_alimento (descricao) VALUES ("Frutas");
INSERT INTO categoria_alimento (descricao) VALUES ("Leite e derivados");
INSERT INTO categoria_alimento (descricao) VALUES ("Carnes e Ovos");
INSERT INTO categoria_alimento (descricao) VALUES ("Leguminosas e oleaginosas");
INSERT INTO categoria_alimento (descricao) VALUES ("Oleos e Gorduras");
INSERT INTO categoria_alimento (descricao) VALUES ("Acucares e Doces");

SELECT id, descricao FROM categoria;

SELECT ca.descricao AS descricao FROM categoria ca;
-------------------------------------------------------------------------------------- 
INSERT INTO paciente (nome, sexo, altura, peso, data_nasc) VALUES ("Adib", "H", 1.80, 78, "2005-09-10");

SELECT * FROM paciente;

SELECT c.nome AS nome, c.sexo AS sexo, c.altura AS altura, c.data_nasc AS data_nasc FROM paciente c;

-------------------------------------------------------------------------------------- 

INSERT INTO dieta (data_inicio, data_fim, descricao, id_paciente ) VALUES 
("2005-12-12", "2006-02-12", "dieta_de_aniversario", 1);

SELECT * FROM dieta;

SELECT c.data_nasc AS data_nasc, c.data_fim AS data_fim, c.descricao AS descricao, c.id_paciente AS id_paciente FROM dieta c;

-------------------------------------------------------------------------------------- 

INSERT INTO refeicao (horario, descricao, id_dieta) VALUES
("2022-03-11 21:22:23", "leite", 1);
INSERT INTO refeicao (horario, descricao, id_dieta) VALUES
("2022-03-11 10:00:00", "castanha", 1);
INSERT INTO refeicao (horario, descricao, id_dieta) VALUES
("2022-03-10 13:00:00", "almoco", 1);
INSERT INTO refeicao (horario, descricao, id_dieta) VALUES
("2022-03-10 16:00:00", "fruta", 1);
INSERT INTO refeicao (horario, descricao, id_dieta) VALUES
("2022-03-10 18:00", "janta", 1);


SELECT * FROM refeicao;

-------------------------------------------------------------------------------------- 

INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("arroz", 100, 1);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("feijao", 100, 1);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("batata_doce", 100, 2);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("patinho", 100, 5);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("banana", 100, 3);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("macarrao", 100, 1);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("leite", 100, 4);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("maca", 100, 3);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("alface", 100, 2);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("castanha", 100, 6);
INSERT INTO alimento (nome, porcao, id_categoria_alimento) VALUES
("pao", 100, 1);


SELECT * FROM alimento;

-------------------------------------------------------------------------------------- 

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(109, "kcal", 1),
(24.00, "Caboidrato", 1),
(2.00, "Proteina", 1),
(0.25, "Gordura", 1),
(0, "Fibra", 1),
(0, "Sodio", 1);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(390, "kcal", 2),
(70.00, "Caboidrato", 2),
(23.00, "Proteina", 2),
(1.0, "Gordura", 2),
(0, "Fibra", 2),
(0, "Sodio", 2);
INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(125, "kcal", 3),
(28.00, "Caboidrato", 3),
(2.00, "Proteina", 3),
(1.0, "Gordura", 3),
(0, "Fibra", 3),
(0, "Sodio", 3);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(219, "kcal", 4),
(00, "Caboidrato", 4),
(36.00, "Proteina", 4),
(7.00, "Gordura", 4),
(0, "Fibra", 4),
(60.00, "Sodio", 4);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(114, "kcal", 5),
(26.00, "Caboidrato", 5),
(1.00, "Proteina", 5),
(0, "Gordura", 5),
(0, "Fibra", 5),
(0, "Sodio", 5);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(378, "kcal", 6),
(64.00, "Caboidrato", 6),
(14.00, "Proteina", 6),
(8.0, "Gordura", 6),
(3.0, "Fibra", 6),
(135600.00, "Sodio", 6);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(63, "kcal", 7),
(5.00, "Caboidrato", 7),
(3.00, "Proteina", 7),
(4.0, "Gordura", 7),
(0, "Fibra", 7),
(0, "Sodio", 7);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(59, "kcal", 8),
(15.00, "Caboidrato", 8),
(00, "Proteina", 8),
(0, "Gordura", 8),
(3.0, "Fibra", 8),
(0, "Sodio", 8);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(14, "kcal", 9),
(2.00, "Caboidrato", 9),
(1.00, "Proteina", 9),
(0, "Gordura", 9),
(1.0, "Fibra", 9),
(0, "Sodio", 9);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(556, "kcal", 10),
(38.00, "Caboidrato", 10),
(18.00, "Proteina", 10),
(37.0, "Gordura", 10),
(0, "Fibra", 10),
(0, "Sodio", 10);

INSERT INTO nutriente (quantidade, descricao, id_alimento) VALUES
(30000, "kcal", 11),
(5500.00, "Caboidrato", 11),
(800.00, "Proteina", 11),
(540.0, "Gordura", 11),
(460.0, "Fibra", 11),
(26400.0, "Sodio", 11);


SELECT * FROM nutriente;

-------------------------------------------------------------------------------------- 

INSERT INTO categoria_nutriente (descricao) VALUES
("lipidios");
INSERT INTO categoria_nutriente (descricao) VALUES
("Caboidrato");
INSERT INTO categoria_nutriente (descricao) VALUES
("Proteina");
INSERT INTO categoria_nutriente (descricao) VALUES
("minerais");
INSERT INTO categoria_nutriente (descricao) VALUES
("vitaminas");
INSERT INTO categoria_nutriente (descricao) VALUES
("agua");



-------------------------------------------------------------------------------------- 
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(1, 3);
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(2, 3);
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(4, 3);
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(7, 1);
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(10, 2);
INSERT INTO alimento_refeicao_assoc (id_alimento, id_refeicao) VALUES 
(5, 4);

INSERT INTO categoria_nutriente_nutriente_assoc (id_categoria_nutriente, id_nutriente) VALUES 
(3, 3);
INSERT INTO categoria_nutriente_nutriente_assoc (id_categoria_nutriente, id_nutriente) VALUES 
(1, 1);
INSERT INTO categoria_nutriente_nutriente_assoc (id_categoria_nutriente, id_nutriente) VALUES 
(1, 2);
INSERT INTO categoria_nutriente_nutriente_assoc (id_categoria_nutriente, id_nutriente) VALUES 
(2, 4);



