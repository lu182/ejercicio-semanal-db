-- Ejercicio semanal:
-- Crear un script que tenga:
-- Todo el proceso de la creación, modificación, y borrado de una db.
-- Todo el proceso de la creación, modificación, y borrado de una tabla.
-- Todo el proceso de la creación, modificación, y borrado de sus registros/valores/datos.
-- Los nombres de todos los campos, tablas, db es a su elección.
-- Subir el script a github

CREATE DATABASE libros;

USE libros;

DROP DATABASE libros;

CREATE TABLE libros(
	id_libro int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	titulo varchar(40) NOT NULL,
	nombre_autor varchar(20) NULL,
	apellido_autor varchar(20),
	editorial varchar(15),
	precio decimal(6,2),	
	cantidad tinyint
);

ALTER TABLE libros CHANGE id_libro id int(2) NOT NULL AUTO_INCREMENT;

DROP TABLE libros; 

INSERT INTO libros(titulo, nombre_autor, apellido_autor, editorial, precio, cantidad)
	VALUES('Martin Fierro', 'Jose', 'Hernandez', 'Emece', 950.50, 20);

INSERT INTO libros(titulo, nombre_autor, apellido_autor, editorial, precio, cantidad)
	VALUES('Antologia poetica', null , 'Borges', 'Planeta', 820.30, 10);

INSERT INTO libros(titulo, nombre_autor, apellido_autor, editorial, precio, cantidad)
	VALUES('Harry Potter y la piedra filosofal', 'Joanne', 'Rowling', 'Bloomsbury', 1000, 50);

UPDATE libros SET cantidad = 30 WHERE id = 1;
UPDATE libros SET nombre_autor = 'Jorge Luis' WHERE titulo = 'Antologia poetica';
UPDATE libros SET precio = 2500 WHERE apellido_autor = 'Rowling';

DELETE FROM libros WHERE id IN(1,2);

