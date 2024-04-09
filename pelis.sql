DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;

PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios'(
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL  UNIQUE,
    'peliculafav' INTEGER , 
    PRIMARY KEY (id AUTOINCREMENT)
    FOREIGN KEY (favorita) REFERENCES peliculas (id),
) STRICT;

CREATE TABLE 'peliculas'(
    'id' INTEGER NOT NULL UNIQUE,
    'titulo' TEXT NOT NULL,
    'genero' TEXT  ,
    'año' INTEGER ,
    'director' TEXT,
    PRIMARY KEY (id AUTOINCREMENT)
) STRICT;


INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario0', 0);
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 1);
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario2', 2);
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario3', 3);
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario4', 4);


INSERT INTO peliculas (titulo, genero, año, director) VALUES ('Jaws', 'Terror', 1975, 'Steven Spielberg');
INSERT INTO peliculas (titulo, genero, año, director) VALUES ('Spider-Man', 'Ciencia Ficción', 2002, 'Sam Raimi');
INSERT INTO peliculas (titulo, genero, año, director) VALUES ('Van Helsing', 'Fantasía Terrorifica', 2004, 'Stephen Sommers');
INSERT INTO peliculas (titulo, genero, año, director) VALUES ('Dracula Untold', 'Fantasía Terrorifica', 2015, 'Gary Shore');
INSERT INTO peliculas (titulo, genero, año, director) VALUES ('Sonic the Hedgehog 2', 'Aventura', 2022, 'Jeff Fowler');

--SELECT usuarios.nombre, peliculas.nombre AS pelicula_favorita
--FROM usuarios
--JOIN usuarios.peliculafav = peliculas.id;