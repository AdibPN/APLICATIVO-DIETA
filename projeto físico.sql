create database nutricao;
use nutricao;

CREATE TABLE categoria_alimento(
    id INT auto_increment,
    descricao VARCHAR(350) NOT NULL,
    primary key (id)
);

CREATE TABLE paciente(
    id INT auto_increment,
    Nome VARCHAR(150) NOT NULL,
    sexo CHAR(2) NOT NULL,
    altura FLOAT NOT NULL,
    peso FLOAT NOT NULL,
    data_nasc DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE dieta(
	id INT auto_increment,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    descricao VARCHAR(345) NOT NULL,
	id_paciente INT NOT NULL,
    PRIMARY KEY(id),
	FOREIGN KEY(id_paciente) REFERENCES paciente(id)
);

CREATE TABLE refeicao(
	id INT auto_increment,
    horario TIMESTAMP NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    id_dieta INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_dieta) REFERENCES dieta(id)
);

CREATE TABLE alimento(
	id INT auto_increment,
	nome VARCHAR(200) NOT NULL,
	porcao FLOAT NOT NULL,
	id_categoria_alimento INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_categoria_alimento) REFERENCES categoria_alimento(id)
);

CREATE TABLE nutriente(
	id INT auto_increment,
	quantidade FLOAT NOT NULL,
	descricao VARCHAR(345) NOT NULL,
	id_alimento INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_alimento) REFERENCES alimento(id)
);

CREATE TABLE categoria_nutriente(
	id INT auto_increment,
	descricao VARCHAR(250) NOT NULL,
	PRIMARY KEY(id)
);

create table alimento_refeicao_assoc (
	id_alimento INT NOT NULL,
	id_refeicao INT NOT NULL,
	foreign key (id_alimento) references alimento(id),
	foreign key (id_refeicao) references refeicao(id),
	primary key (id_alimento, id_refeicao)
);

create table categoria_nutriente_nutriente_assoc (
	id_categoria_nutriente INT NOT NULL,
	id_nutriente INT NOT NULL,
	foreign key (id_categoria_nutriente) references categoria_nutriente(id),
	foreign key (id_nutriente) references nutriente(id),
	primary key (id_categoria_nutriente, id_nutriente)
);

