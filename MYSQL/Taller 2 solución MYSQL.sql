-- =====================================================
-- TALLER 2 (Fundamentos de bases de datos)
-- Realizado por: Brayan Narváez
-- Motor: MySQL
-- =====================================================

-- ELIMINAR BASE DE DATOS
DROP DATABASE IF EXISTS ejercicios_bdd;

-- Preparacion de la base de datos para el taller
CREATE DATABASE ejercicios_bdd;

-- Usar la base de datos de ejercicios
USE ejercicios_bdd;

-- Eliminar Tabla
DROP TABLE IF EXISTS estudiantes;

-- PARTE 1: crecación tabla estudiante
CREATE TABLE estudiantes (
	id_estudiante INT,
    nombres VARCHAR(50),
    apellidos varchar(50),
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10)
    );

-- PARTE 2: definición de clave primaria
ALTER TABLE estudiantes ADD PRIMARY KEY (id_estudiante);

-- PARTE 3: inserción inicial de datos
INSERT INTO estudiantes VALUES
	(1,'Juan','Perez',20,'Programación','2026-05-12'),
	(2,'Raul','Ortiz',20,'Redes','2026-05-12'),
	(3,'Pepe','Menedez',21,'Base de Datos','2026-05-12'),
	(4,'David','Páez',19,'Programación','2026-05-12'),
	(5,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (6,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (7,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (8,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (9,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (10,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (11,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (12,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (13,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (14,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12'),
    (15,'Sebastian','Caicedo',18,'Ciberseguridad','2026-05-12');
    
-- PARTE 4: consultas básicas

-- Mostrar todos los estudiantes
SELECT * FROM estudiantes;

-- Mostrar nombres y apellidos
SELECT nombres,apellidos FROM estudiantes;

-- Mostrar estudiantes mayor a 18 años
SELECT * FROM estudiantes WHERE edad >= 18;

-- Mostrar estudiantes entre 18 y 25 años
SELECT * FROM estudiantes WHERE edad >= 18 AND edad <= 25;

-- Mostrar estudiantes del curso de Base de Datos
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

-- Mostrar estudiantes registrados después del 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

-- Mostrar Estudiantes registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro >= '2026-01-01' and
fecha_registro <= '2026-04-30';

-- PARTE 5: actualización de registros
UPDATE estudiantes SET fecha_registro = '2026-01-10' WHERE id_estudiante =2;
UPDATE estudiantes SET fecha_registro = '2023-04-19' WHERE id_estudiante =3;
UPDATE estudiantes SET fecha_registro = '2024-12-02' WHERE id_estudiante =4;
UPDATE estudiantes SET fecha_registro = '2025-08-17' WHERE id_estudiante =5;
UPDATE estudiantes SET apellidos = 'Páez' WHERE id_estudiante =7;
UPDATE estudiantes SET apellidos = 'Rodríguez' WHERE id_estudiante =8;
UPDATE estudiantes SET apellidos = 'Diaz' WHERE id_estudiante =9;
UPDATE estudiantes SET apellidos = 'Romo' WHERE id_estudiante =10;
UPDATE estudiantes SET nombres = 'Brayan', apellidos = 'Narváez', curso = 'Redes'
WHERE id_estudiante =10;

-- PARTE 6: eliminación de registros
DELETE FROM estudiantes WHERE id_estudiante = 10;
DELETE FROM estudiantes WHERE curso = 'Redes';
DELETE FROM estudiantes WHERE fecha_registro >= '2020-02-14';

-- PARTE 7: modificar tabla
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

-- PARTE 8: modificación de los INSERT, UPDATE y DELETE

-- Modificacion de INSERT
INSERT INTO estudiantes VALUES
	(16,'Daniela','Perez',20,'Programación','2026-05-12', 'dp@gmail.com'),
	(17,'Saul','Ortiz',20,'Redes','2026-05-12','so@gmail.com'),
	(18,'Rodrigo','Menedez',21,'Base de Datos','2026-05-12','rm@gmail.com'),
    (19,'Camilo','Juarez',21,'Base de Datos','2026-05-12','cj@gmail.com'),
	(20,'Jorge','Páez',19,'Programación','2026-05-12','jp@gmail.com');

-- Modificacion de UPDATE
UPDATE estudiantes SET correo = 'correoPrueba@hotmail.com' 
WHERE id_estudiante IN (6,9);

-- Modificacion de DELETE
DELETE FROM estudiantes WHERE correo = 'correoPrueba@hotmail.com';

-- Modificacion de SELECT
SELECT * FROM estudiantes WHERE correo = 'correoPrueba@hotmail.com';

-- PARTE 9: Consultas por fechas

-- Mostrar estudiantes registrados después del 2026-02-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';

-- Mostrar estudiantes registrados hasta el 2026-05-01
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';

-- Mostrar estudiantes registrados entre dos fechas
SELECT * FROM estudiantes WHERE fecha_registro >= '2023-05-01' AND 
fecha_registro <= '2026-05-12';

-- Mostrar estudiantes registrados exactamente el 2026-03-15
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';

-- Mostrar estudiantes de programación 
SELECT * FROM estudiantes WHERE curso = 'Programación' AND
fecha_registro > '2026-01-01';