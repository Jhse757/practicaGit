

/* PARA BORRAR UN DATO*/
/*DELETE FROM tipo_documento WHERE `tipo_documento`.`id` = 3*/

/* PARA BORRAR UNA TABLA*/
/*DROP TABLE usuarios*/


CREATE TABLE tipo_documentos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(20),
    status ENUM('true', 'false') NOT NULL
);

/* Modifica el nombre de la tabla*/
ALTER TABLE tipo_documento RENAME tipo_documentos 

ALTER TABLE tipo_documento COLUMN 



select * from tipo_documento


alter 

INSERT INTO tipo_vehiculos(tipo_vehiculo) VALUES ('Carro'), ('Moto'), ('Camion')


CREATE TABLE generos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(20),
    status ENUM('true', 'false') NOT NULL
);

CREATE TABLE usuarios(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    numero_documento VARCHAR(20) NOT NULL,
    correo VARCHAR(45) UNIQUE NOT NULL,
    celular VARCHAR(45) NOT NULL,
    contacto_emergencia VARCHAR(45) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

    tipo_documento_id INT,
    FOREIGN KEY (tipo_documento_id) REFERENCES tipo_documento(id),

CREATE TABLE vehiculos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    placa VARCHAR(10) NOT NULL UNIQUE,
    status ENUM('true', 'false') NOT NULL
);

CREATE TABLE marcas(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre_marca VARCHAR(45) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);


CREATE TABLE tipo_vehiculos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    tipo_vehiculo VARCHAR(20) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

CREATE TABLE colores(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre_color VARCHAR(30) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

CREATE TABLE tipo_registros(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    tipo_registro VARCHAR(45) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Johan','Arboleda','123456789','micorreo@gmail.com','3215085031','321509571', 'true')

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Laura','Pérez','987654321','laura.perez@email.com','3004567890','3014567891', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Carlos','Gomez','234567890','carlos.gomez@email.com','3101234567','3123456789', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('María','Lopez','345678901','maria.lopez@email.com','3202345678','3234567890', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Ana','Fernandez','567890123','ana.fernandez@email.com','3404567890','3434567892', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Pedro','Martinez','456789012','pedro.martinez@email.com','3303456789','3334567891', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Carlos','Martínez','987654321','carlos.martinez@email.com','3214567890','3214567892', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Miguel','Ruiz','234567890','miguel.ruiz@email.com','3109876543','3101928374', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Patricia','Jiménez','789012345','patricia.jimenez@email.com','3609876543','3609876544', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) VALUES ('Sofía','López','345678901','sofia.lopez@email.com','3205678901','3205678902', 'true');


INSERT INTO vehiculos(placa) VALUES ('DSV2455')

INSERT INTO vehiculos(placa) VALUES ('ABC1234');

INSERT INTO vehiculos(placa) VALUES ('XYZ5678');

INSERT INTO vehiculos(placa) VALUES ('GHI9012');

INSERT INTO vehiculos(placa) VALUES ('JKL3456');

INSERT INTO vehiculos(placa) VALUES ('MNO7890');

INSERT INTO vehiculos(placa) VALUES ('PQR1234');

INSERT INTO vehiculos(placa) VALUES ('STU5678');

INSERT INTO vehiculos(placa) VALUES ('VWX9012');

INSERT INTO vehiculos(placa) VALUES ('GHI7890');

INSERT INTO vehiculos(placa) VALUES ('DEF3456');

SELECT * FROM vehiculos;

