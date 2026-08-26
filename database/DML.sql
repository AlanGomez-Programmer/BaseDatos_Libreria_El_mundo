USE Libreria_El_mundo;

-- Datos de nacionalidad
INSERT INTO Nacionalidad (id_nacionalidad, nombre_pais) VALUES
(1, 'Colombia'),
(2, 'Argentina'),
(3, 'Chile'),
(4, 'Reino Unido'),
(5, 'Japón');

-- Datos de autores
INSERT INTO Autor (id_autor, nombre, fecha_nacimiento, id_nacionalidad) VALUES
(1, 'Gabriel García Márquez', '1927-03-06', 1),
(2, 'Jorge Luis Borges', '1899-08-24', 2),
(3, 'Isabel Allende', '1942-08-02', 3),
(4, 'J. K. Rowling', '1965-07-31', 4),
(5, 'Haruki Murakami', '1949-01-12', 5);

-- Datos de editoriales
INSERT INTO Editorial (id_editorial, nombre) VALUES
(1, 'Editorial Sudamericana'),
(2, 'Planeta'),
(3, 'Penguin Random House'),
(4, 'Bloomsbury'),
(5, 'Tusquets Editores');

-- Datos de categorias
INSERT INTO Categoria (id_categoria, categoria) VALUES
(1, 'Novela'),
(2, 'Realismo mágico'),
(3, 'Misterio'),
(4, 'Fantasía'),
(5, 'Literatura contemporánea');

-- Datos de libros
INSERT INTO Libro (id_libro, titulo, fecha_publicacion, ISBN, precio, cantidad_stock, id_editorial, id_categoria) VALUES
(1, 'Cien años de soledad', '1967-05-30', '9780307474728', 'Q85.00', 12, 1, 2),
(2, 'Ficciones', '1944-01-01', '9788420633121', 'Q65.00', 8, 2, 1),
(3, 'La casa de los espiritus', '1982-01-01', '9788483462034', 'Q95.00', 10, 3, 5),
(4, 'Harry Potter y la piedra filosofal', '1997-06-26', '9788478884452', 'Q120.00', 15, 4, 4),
(5, 'Tokio Blues', '1987-09-04', '9788483835043', 'Q75.00', 7, 5, 5);

-- Relacion entre autores y libros
INSERT INTO Autor_Libro (id_libro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Datos de clientes
INSERT INTO Cliente (id_cliente, nombre, correo_electronico, telefono, direccion) VALUES
(1, 'Ana Martínez', 'ana.martinez@email.com', '3001234567', 'Calle 10 # 15-20'),
(2, 'Bruno Rodriguez', 'bruno.rodriguez@email.com', '3012345678', 'Carrera 7 # 80-35'),
(3, 'Carolina Gómez', 'carolina.gomez@email.com', '3023456789', 'Calle 45 # 22-18'),
(4, 'Diego Hernández', 'diego.hernandez@email.com', '3034567890', 'Carrera 33 # 12-40'),
(5, 'Elena Torres', 'elena.torres@email.com', '3045678901', 'Calle 72 # 9-14');

-- Datos de estados de pedido
INSERT INTO Estado (id_estado, estado) VALUES
(1, 'Pendiente'),
(2, 'Confirmado'),
(3, 'En preparación'),
(4, 'Enviado'),
(5, 'Entregado');

-- Datos de pedidos
INSERT INTO Pedido (id_pedido, fecha_pedido, id_estado, id_cliente) VALUES
(1, '2026-01-15', 5, 1),
(2, '2026-02-03', 4, 2),
(3, '2026-02-18', 3, 3),
(4, '2026-03-05', 2, 4),
(5, '2026-03-20', 1, 5);

-- Relacion entre pedidos y libros
INSERT INTO Pedido_libro (id_pedido, id_libro) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Datos de metodos de pago
INSERT INTO Metodo_pago (id_metodo_pago, metodo_pago) VALUES
(1, 'Tarjeta de credito'),
(2, 'Tarjeta de debito'),
(3, 'Transferencia bancaria'),
(4, 'PayPal'),
(5, 'Efectivo');

-- Datos de transacciones
INSERT INTO Transaccion (id_transaccion, monto_total, fecha_transaccion, id_pedido, id_metodo_pago) VALUES
(1, 'Q85.00', '2026-01-15', 1, 1),
(2, 'Q65.00', '2026-02-03', 2, 2),
(3, 'Q95.00', '2026-02-18', 3, 3),
(4, 'Q120.00', '2026-03-05', 4, 4),
(5, 'Q75.00', '2026-03-20', 5, 5);
