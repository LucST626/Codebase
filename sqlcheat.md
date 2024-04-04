`Abrir sqlite3`, creamos una tabla y usamos `.clone` para crearla y luego la podemos abrir con `.open FILENAME`.

`sqlite3 ejemplo.db` para arrancar una base de datos, en cuanto mando un comando CREATE , el archivo se crea automaticamente.

- CREATE simple
Crea una tabla en la base de datos.
- SELECT
Selecciona una tabla especifica creada en la base de datos.
- INSERT
Añade elementos dentro de una tabla.
- DROP
Elimina la tabla especificada.
- DISTINCT
Devuelve los valores diferentes que tenga un elemento.
- COUNT
Cuenta el número de veces que un elemento ha sido creado.
- PRAGMA fereign_keys = ON;
Activa las foreign keys para que haga caso a las que creamos.
- STRICT
Obliga a que el valor de un elemento sea del tipo especificado.

- .schema
Muestra toda la informacion creada en la base de datos.
- .tables
Muestra todas las tablas creadas.
- .open
Abre un archivo clonado.
- .clone
Clona un archivo con todos los elementos creados hasta el momento.