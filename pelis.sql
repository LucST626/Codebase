DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;

PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios'(
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL  UNIQUE,
    'peliculafav' TEXT , 
    PRIMARY KEY ('id' AUTOINCREMENT)
) STRICT;

CREATE TABLE 'peliculas'(
    'id' INTEGER NOT NULL UNIQUE,
    'titulo' TEXT NOT NULL,
    'genero' TEXT  ,
    'año' INTEGER ,
    'director' TEXT,
    'autor' INTEGER NOT NULL,
    FOREIGN KEY ('autor') REFERENCES 'usuarios' ('id'),
    PRIMARY KEY ('id' AUTOINCREMENT)
) STRICT;


INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario0', 'Jaws');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 'Spider-Man');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario2', 'Van Helsing');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario3', 'Dracula Untold');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario4', 'Sonic the Hedgehog 2');


INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Jaws', 'Terror', 1975, 'Steven Spielberg', 0);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Spider-Man', 'Ciencia Ficción', 2002, 'Sam Raimi', 1);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Van Helsing', 'Fantasía Terrorifica', 2004, 'Stephen Sommers', 2);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Dracula Untold', 'Fantasía Terrorifica', 2015, 'Gary Shore', 3);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Sonic the Hedgehog 2', 'Aventura', 2022, 'Jeff Fowler', 4);