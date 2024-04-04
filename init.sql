DROP TABLE IF EXISTS 'usuarios';
DROP TABLE IF EXISTS 'mensajes';

CREATE TABLE 'usuarios'('id', 'nombre', 'edad');
CREATE TABLE 'mensajes'('mensaje', 'usuario');

INSERT INTO usuarios VALUES(1, 'admin', 20);
INSERT INTO usuarios VALUES(2, 'user0', 35);
INSERT INTO usuarios VALUES(3, 'user1', 16);
INSERT INTO usuarios VALUES(4, 'user2', 46);

--SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad >= 25;