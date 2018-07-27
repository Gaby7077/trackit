CREATE DATABASE postDB;
USE postDB;

CREATE TABLE user
(
	id int AUTO_INCREMENT,
	UserName varchar(255) NOT NULL,
    EmailAddress VARCHAR(255) NOT NULL UNIQUE,
	passwordUser BINARY(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE showGuides
(
    NoGuia int NOT NULL,
	Paqueteria varchar(255) NOT NULL,
    Origen varchar(255),
	Destino varchar(255),
    Estatus varchar(255),
	PRIMARY KEY (NoGuia)
);

CREATE UNIQUE INDEX idGuide
ON showGuides (NoGuia);
