# Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Libreria_El_mundo;

# Selección de base de datos
USE Libreria_El_mundo;

# Creación de las tablas
-- Tablas de Nacionalidad y Autor
CREATE TABLE IF NOT EXISTS Nacionalidad(
    id_nacionalidad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_pais VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Autor(
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_nacionalidad INT NOT NULL,
    FOREIGN KEY (id_nacionalidad) REFERENCES Nacionalidad(id_nacionalidad)
);

-- Tablas de Editorial, Categoría y Libro
CREATE TABLE IF NOT EXISTS Editorial(
    id_editorial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL
);

CREATE TABLE IF NOT EXISTS Categoria(
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Libro(
    id_libro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    fecha_publicacion DATE NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    precio VARCHAR(45),
    cantidad_stock INT NOT NULL,
    id_editorial INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_editorial) REFERENCES Editorial(id_editorial),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Unión de entidades Autor y Libro
CREATE TABLE IF NOT EXISTS Autor_Libro(
    id_libro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_libro, id_autor),
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- Tablas Cliente, Estado y Pedido
CREATE TABLE IF NOT EXISTS Cliente(
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,
    correo_electronico VARCHAR(45) NOT NULL,
    telefono VARCHAR(45) NOT NULL,
    direccion VARCHAR(50) NOT NULL
); 

CREATE TABLE IF NOT EXISTS Estado(
    id_estado INT NOT NULL PRIMARY KEY,
    estado VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Pedido(
    id_pedido INT NOT NULL PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    id_estado INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Unión de Pedido y LIbro
CREATE TABLE IF NOT EXISTS Pedido_libro(
    id_pedido INT NOT NULL,
    id_libro INT NOT NULL,
    PRIMARY KEY (id_pedido, id_libro),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
);

-- Tablas Método de pago y Transacción
CREATE TABLE IF NOT EXISTS Metodo_pago(
    id_metodo_pago INT NOT NULL PRIMARY KEY,
    metodo_pago VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Transaccion(
    id_transaccion INT NOT NULL PRIMARY KEY,
    monto_total VARCHAR(45) NOT NULL,
    fecha_transaccion DATE NOT NULL,
    id_pedido INT NOT NULL,
    id_metodo_pago INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_metodo_pago) REFERENCES Metodo_pago(id_metodo_pago)
);