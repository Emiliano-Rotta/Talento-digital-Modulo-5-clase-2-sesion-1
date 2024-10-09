-- Ejercicio 1
-- Crea una base de datos llamada escuela_db.
CREATE DATABASE escuela_db;
-- Crea una tabla llamada alumnos con los siguientes campos:
-- id de tipo entero (int), que será la clave primaria.
-- nombre de tipo texto (varchar(30)), que no sea nulo.
-- curso de tipo texto (varchar(30)), que no sea nulo.
CREATE TABLE alumnos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  curso VARCHAR(30) NOT NULL
);

-- Inserta un dato en la tabla alumnos.
INSERT INTO alumnos (nombre, curso) VALUES ('Maria Gonzalez', '5C');

-- Muestra el dato que has insertado.
SELECT * FROM alumnos

-- Inserta 4 datos más en la tabla alumnos.
INSERT INTO alumnos (nombre, curso) VALUES 
('Jose Ramirez', '6A'),
('Andrea Silva', '3B'),
('Luis Fernandez', '4D'),
('Sofia Castro', '6B');

-- Muestra 2 elementos de esos datos.
SELECT * FROM alumnos WHERE id IN (2, 3);

-- Elimina un dato de la tabla alumnos.
DELETE FROM alumnos WHERE id = 2

-- Muestra todos los datos restantes.
SELECT * FROM alumnos

-- Elimina la tabla alumnos.
DROP TABLE alumnos;
\dt -- para ver las tablas que tengo en una base de datos

-- Elimina la base de datos escuela_db.
DROP DATABASE escuela_db;


-- Ejercicio 2
-- Crea una base de datos llamada tienda_db.
CREATE DATABASE tienda_db;

-- Crea una tabla llamada productos con los siguientes campos:
-- id de tipo entero (int), que será la clave primaria.
-- nombre de tipo texto (varchar(40)), que no sea nulo.
-- precio de tipo entero (int), que no sea nulo.
CREATE TABLE productos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  precio INT NOT NULL
);

-- Inserta un dato en la tabla productos.
INSERT INTO productos (nombre, precio) VALUES ('Laptop', 1200);

-- Muestra el dato que has insertado.
SELECT * FROM productos 

-- Inserta 4 datos más en la tabla productos.
INSERT INTO productos (nombre, precio) VALUES 
('Mouse', 25),
('Teclado', 45),
('Monitor', 300),
('Impresora', 150);

-- Muestra 2 elementos de esos datos.

SELECT * FROM productos WHERE id IN (2, 3);

-- Elimina un dato de la tabla productos.
DELETE FROM productos WHERE id = 2;
-- Muestra todos los datos restantes.
SELECT * FROM productos;
-- Elimina la tabla productos.
DROP TABLE productos;

-- Elimina la base de datos tienda_db.

DROP DATABASE tienda_db;


-- Ejercicio 3
-- Crea una base de datos llamada biblioteca db.
CREATE DATABASE biblioteca_db;

-- Crea una tabla llamada libros con los siguientes campos:

-- id de tipo entero (int), que será la clave primaria.
-- titulo de tipo texto (varchar(50)), que no sea nulo.
-- autor de tipo texto (varchar(50)), que no sea nulo.
CREATE TABLE libros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50) NOT NULL
);

-- Inserta un dato en la tabla libros.
INSERT INTO libros (titulo, autor) VALUES ('Cien Años de Soledad', 'Gabriel García Márquez');

-- Muestra el dato que has insertado.
SELECT * FROM libros
-- Inserta 4 datos más en la tabla libros.
INSERT INTO libros (titulo, autor) VALUES 
('Don Quijote', 'Miguel de Cervantes'),
('1984', 'George Orwell'),
('El Principito', 'Antoine de Saint-Exupéry'),
('Hamlet', 'William Shakespeare');

-- Muestra 2 elementos de esos datos.
SELECT * FROM libros WHERE id IN (2, 3);
-- Elimina un dato de la tabla libros.
DELETE FROM libros WHERE id = 2;
-- Muestra todos los datos restantes.
SELECT * FROM libros
-- Elimina la tabla libros.
DROP TABLE libros;

-- Elimina la base de datos biblioteca_db.
DROP DATABASE biblioteca_db;

