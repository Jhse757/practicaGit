-- Active: 1708738391045@@bwuwo60nkdiuyf8lio8h-mysql.services.clever-cloud.com@3306@bwuwo60nkdiuyf8lio8h


/* PARA BORRAR UN DATO*/
/*DELETE FROM tipo_documento WHERE `tipo_documento`.`id` = 3*/

/* PARA BORRAR UNA TABLA*/
/*DROP TABLE usuarios*/

/*
Agrega una propiedad al dato
ALTER TABLE marcas 
ADD CONSTRAINT nombre_marca UNIQUE (nombre_marca)*/


/* CREACIÒN CONEXIONES*/

/* Conexion tipo_documentos a usuarios*/
ALTER TABLE usuarios
ADD tipo_documento_id INT

ALTER TABLE usuarios
ADD FOREIGN KEY (tipo_documento_id) REFERENCES tipo_documentos(id) 

/* Conexion genero a usuarios*/
ALTER TABLE usuarios
ADD genero_id INT

ALTER TABLE usuarios
ADD FOREIGN KEY (genero_id) REFERENCES generos(id)

/* Conexion propietario_vehiculo a registros*/
ALTER TABLE propietario_vehiculo
ADD usuario_id INT

ALTER TABLE propietario_vehiculo
ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id)

/* Conexion usuarios a registros*/
ALTER TABLE registros
ADD usuario_id INT

ALTER TABLE registros
ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id)

/* Conexion colores a vehiculos*/
ALTER TABLE vehiculos
ADD colores_id INT 

ALTER TABLE vehiculos
ADD FOREIGN KEY (colores_id) REFERENCES colores(id)

/* Conexion marcas a vehiculos*/
ALTER TABLE vehiculos
add marca_id INT

ALTER TABLE vehiculos
ADD FOREIGN KEY (marca_id) REFERENCES marcas(id)

/* Conexion tipo_vehiculo a vehiculos*/
ALTER TABLE vehiculos
ADD tipo_vehiculo_id INT

ALTER TABLE vehiculos
ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES tipo_vehiculos(id)

/* Conexion tipo_registro a registros*/
ALTER TABLE registros
ADD tipo_registro_id INT

ALTER TABLE registros
ADD FOREIGN KEY (tipo_registro_id) REFERENCES tipo_registros(id)

/* Conexion vehiculos a registros*/
ALTER TABLE registros
ADD vehiculos_id INT

ALTER TABLE registros
ADD FOREIGN KEY (vehiculos_id) REFERENCES vehiculos(id)

/* Conexion propietario_vehiculo a registros*/
ALTER TABLE registros
ADD propietario_vehiculo_id INT

ALTER TABLE registros
ADD FOREIGN KEY (propietario_vehiculo_id) REFERENCES propietario_vehiculo(id)

/* Conexion propietario_vehiculo a registros*/
ALTER TABLE registros
ADD usuario_id INT

ALTER TABLE registros
ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id)

/* Conexion plazas_de_parqueo a registros*/
ALTER TABLE registros
ADD plazas_de_parqueo_id INT

ALTER TABLE registros
ADD FOREIGN KEY (plazas_de_parqueo_id) REFERENCES plazas_de_parqueo(id)



/*CREACION DE TABLAS*/

/* Creaciòn tabla tipo_documentos*/
CREATE TABLE propietario_vehiculo(
id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
status ENUM('true', 'false')
);

/* Creaciòn tabla plazas_de_parqueo*/
CREATE TABLE plazas_de_parqueo(
id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
codigo VARCHAR(10),
status ENUM('true', 'false')
);

/* Creaciòn tabla tipo_documentos*/
CREATE TABLE tipo_documentos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(20),
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla generos*/
CREATE TABLE generos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(20),
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla usuarios*/
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

/* Creaciòn tabla vehiculos*/
CREATE TABLE vehiculos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    placa VARCHAR(10) NOT NULL UNIQUE,
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla marcas*/
CREATE TABLE marcas(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre_marca VARCHAR(45) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla tipo_vehiculos*/
CREATE TABLE tipo_vehiculos(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    tipo_vehiculo VARCHAR(20) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla colores*/
CREATE TABLE colores(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre_color VARCHAR(30) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);

/* Creaciòn tabla tipo_registros*/
CREATE TABLE tipo_registros(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    tipo_registro VARCHAR(45) NOT NULL,
    status ENUM('true', 'false') NOT NULL
);
/* Creaciòn tabla Registros*/
CREATE TABLE registros(
    id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    fecha_registro DATETIME,
    status ENUM('true', 'false') NOT NULL
);



/*INSERCIÒN DE DATOS*/

INSERT INTO tipo_vehiculos(tipo_vehiculo) 
VALUES ('Carro'), ('Moto'), ('Camion');

INSERT INTO tipo_registros(tipo_registro) 
VALUES ('Salida'), ('Ingreso');


INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Johan','Arboleda','123456789','micorreo@gmail.com','3215085031','321509571', 'true')

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Laura','Pérez','987654321','laura.perez@email.com','3004567890','3014567891', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Carlos','Gomez','234567890','carlos.gomez@email.com','3101234567','3123456789', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('María','Lopez','345678901','maria.lopez@email.com','3202345678','3234567890', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Ana','Fernandez','567890123','ana.fernandez@email.com','3404567890','3434567892', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Pedro','Martinez','456789012','pedro.martinez@email.com','3303456789','3334567891', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Carlos','Martínez','987654321','carlos.martinez@email.com','3214567890','3214567892', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Miguel','Ruiz','234567890','miguel.ruiz@email.com','3109876543','3101928374', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Patricia','Jiménez','789012345','patricia.jimenez@email.com','3609876543','3609876544', 'true');

INSERT INTO usuarios(nombre, apellido, numero_documento, correo, celular, contacto_emergencia, status) 
VALUES ('Sofía','López','345678901','sofia.lopez@email.com','3205678901','3205678902', 'true');


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



SELECT usuario.nombre, usuario.apellido, vehiculo.placa FROM vehiculos INNER JOIN usuarios WHERE vehiculos.placa = 'JKL3456';

SELECT * FROM usuarios WHERE id = 1

ALTER TABLE tipo_documentos
MODIFY COLUMN tipo_documento VARCHAR(20) NOT NULL


/* Une las tablas y trae un dato especifico*/
SELECT * FROM usuarios INNER JOIN tipo_documentos WHERE
tipo_documentos.id = usuarios.tipo_documento_id AND
usuarios.numero_documento = '123456789'