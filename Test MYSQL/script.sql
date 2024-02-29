-- Active: 1708465919906@@b5ufqtd1cu91sy9umjfg-mysql.services.clever-cloud.com@3306@b5ufqtd1cu91sy9umjfg
CREATE TABLE estudiantes(
    id INT(10) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE,
    tipo_documento VARCHAR(30) NOT NULL,
    numero_documento VARCHAR(15) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    edad VARCHAR(3) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

DROP TABLE estudiantes;

INSERT INTO estudiantes
(nombre, apellidos, correo, tipo_documento, numero_documento, genero, pais, ciudad, edad, fecha_nacimiento)
VALUES
('Juan','Perez', 'juanperez4@micorreo.com','cedula','1234567879','masculino','Colombia','medellin','18','2000/12/24');

 DELETE FROM estudiantes WHERE `estudiantes`.`id` = 1