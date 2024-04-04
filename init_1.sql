PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS 'mensajes';
DROP TABLE IF EXISTS 'usuarios';

CREATE TABLE 'usuarios'(
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL UNIQUE,
    'edad' INTEGER,
    'pais' TEXT,
    'email' TEXT NOT NULL UNIQUE,
    'balance' REAL NOT NULL,
    'rol' TEXT NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT)
    )STRICT;

CREATE TABLE 'mensajes'(
    'id' INTEGER NOT NULL UNIQUE,
    'mensaje' NOT NULL,
    'autor' INTEGER NOT NULL,
    FOREIGN KEY ('autor') REFERENCES 'usuarios'('id'),
    PRIMARY KEY ('id' AUTOINCREMENT)
);

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Juan Diego', 33, 'España', 'juandiego@gmail.com', 1200, 'admin');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Bagui', 20, 'Francia', 'bagui@gmail.com', 1200, 'mod');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Camachops', 24, 'Venezuela', 'camachops@gmail.com', 1200, 'mod');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Jash', 20, 'Tu Madre', 'jash@gmail.com', 1200, 'mod');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Axel', 20, 'Turkmenistan', 'axel@gmail.com', 1200, 'user');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Alvaro', 18, 'Hawaii', 'alvaro@gmail.com', 1200, 'user');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Cristian', 20, 'Canarias', 'cristian@gmail.com', 1200, 'user');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Makram', 22, 'Marruecos', 'makram@gmail.com', 1200, 'user');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Idaira', 19, 'Rumania', 'idaira@gmail.com', 1200, 'user');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) 
VALUES('Tony', 20, 'Undifined', 'tony@gmail.com', 1200, 'user');


INSERT INTO mensajes (mensaje, autor) VALUES('Hola Mundo', 1);
INSERT INTO mensajes (mensaje, autor) VALUES('Ola k ase', 4);

SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad >= 25;