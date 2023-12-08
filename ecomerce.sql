-- base de datos ecomex
CREATE DATABASE ecomex;

--base de datos ecomex
USE ecomex;

--Tabla administrador
CREATE TABLE administardor(
  id_administrador INT PRIMARY KEY AUTO_INCREMENT,
  nombre_administrador VARCHAR(50),
  app_administrador VARCHAR(40),
  apm_administrador VARCHAR(40),
  correo_electronico VARCHAR(30),
  contrasena VARCHAR(40),
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --ON UPDATE CURRENT_TIMESTAMP
);

--Tabla estatus
CREATE TABLE estatus(
    id_estatus INT PRIMARY KEY AUTO_INCREMENT,
    nombre_estatus VARCHAR(20);
);

--Tabla vendedor
CREATE TABLE vendedor(
  id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
  nombre_vendedor VARCHAR(40),
  app_vendedor VARCHAR(40),
  apm_vendedor VARCHAR(40),
  correo_electronico VARCHAR(40),
  contrasena VARCHAR(40),
  telefono VARCHAR(40),
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  id_estatus INT,
  FOREING KEY(id_estatus) REFERENCES estatus(id_estatus),
);

--Tabla marca
CREATE TABLE marca(
    id_marca INT PRIMARY KEY AUTO_INCREMENT,
    nombre_marca VARCHAR(40),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

--Tabla producto
CREATE TABLE producto(
  id_producto INT PRIMARY KEY AUTO_INCREMENT,
  nombre_producto VARCHAR(40),
  id_marca INT, 
  modelo VARCHAR(40),
  stock INT,
  precio_provedor DECIMAL(10,2),
  precio_publico DECIMAL(10,2),
  descripcion TEXT,
  id_vendedor INT,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  id_estatus INT,
  FOREING KEY(id_marca) REFERENCES marca(id_marca),
  FOREING KEY(id_vendedor) REFERENCES vendedor(id_vendedor),
  FOREING KEY(id_estatus) REFERENCES estatus(id_estatus),
);

--Table cliente
CREATE TABLE cliente(
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nombre_cliente VARCHAR(40),
  app_cliente VARCHAR(40),
  apm_cliente VARCHAR(40),
  correo_electronico VARCHAR(40),
  contrasena VARCHAR(40),
  telefono VARCHAR(10),
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  id_estatus INT,
  FOREING KEY(id_estatus) REFERENCES estatus(id_estatus),
);

--Tabla ubicacion
CREATE TABLE ubicacion(
  id_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
  nombre_contacto VARCHAR(40),
  numero_contacto VARCHAR(40),
  region VARCHAR(220),
  manzana VARCHAR(40),
  numero_interior VARCHAR(40),
  numero_exterior VARCHAR(40),
  codigo_postal VARCHAR(7),
  calles VARCHAR(140),
  referencia VARCHAR(400),
  id_cliente INT,
  FOREING KEY(id_cliente) REFERENCES cliente(id_cliente)
);

--Tabla ventas
CREATE TABLE ventas(
  id_venta INT PRIMARY KEY AUTO_INCREMENT,
  id_vendedor INT,
  id_cliente INT,
  id_producto INT,
  cantidad_producto INT,
  fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREING KEY(id_vendedor) REFERENCES vendedor(id_vendedor),
  FOREING KEY(id_cliente) REFERENCES cliente(id_cliente),
  FOREING KEY(id_producto) REFERENCES producto(id_producto),
);