-- insertar 10 registros para la Tabla administrador 

INSERT INTO administrador (nombre_administrador, app_administrador, apm_administrador, correo_electronico, contrasena, fecha_creacion) VALUES 
('Jennifer', 'Wright', 'Powell', 'acevedoryan@gmail.com', '@RQxr6m#(1', '2023-07-19 00:08:27'), 
('Christine', 'Green', 'Rojas', 'romerosarah@hotmail.com', '#2L4zIgfRz', '2020-11-03 13:27:01'), 
('Christopher', 'Thomas', 'Williams', 'marc26@hotmail.com', 'XV@0WuD&Zn', '2022-12-22 23:45:36'), 
('James', 'Kelly', 'Jones', 'douglascarter@grant.com', 'JOT7GIvu&1', '2022-04-02 22:15:40'), 
('Cory', 'Thompson', 'Wright', 'lholland@wells.info', 'rV5Jkfd0(B', '2022-05-20 20:54:50'), 
('Marc', 'Owens', 'Jenkins', 'brianturner@hotmail.com', 'SG1UZ4Ff(3', '2020-07-18 04:43:20'), 
('Collin', 'Cox', 'Taylor', 'velezlisa@becker-tanner.net', 'UqSOxqlk)1', '2022-11-06 05:20:23'), 
('Lynn', 'Phillips', 'Johnson', 'arnoldjacob@gmail.com', '+2dLF#bPnI', '2023-08-15 21:23:39'), 
('Kevin', 'Johnson', 'Jackson', 'maria65@gmail.com', 'zJ25dN%z(&', '2021-06-11 00:39:47'), 
('Joshua', 'Ramirez', 'Watson', 'hollowaychris@hotmail.com', 'QJ3NUkpuS@', '2021-03-30 10:40:59');

-- Tabla estatus (3 registros, suficiente para la mayoría de los casos)

INSERT INTO estatus (nombre_estatus) VALUES
('Activo'), 
('Inactivo'), 
('Eliminado'),
('Pendiente');

-- Tabla vendedor (10 registros)

INSERT INTO vendedor (nombre_vendedor, app_vendedor, apm_vendedor, correo_electronico, contrasena, telefono, fecha_creacion, id_estatus) VALUES 
('Charles', 'Foster', 'Pope', 'ejohnson@davis-white.com', 'zMd3RWFu$2', '(987)303-1', '2021-03-15 04:36:52', 1), 
('Nathaniel', 'Myers', 'Butler', 'brandilewis@whitaker.biz', '3ITVuRg!!D', '129-205-77', '2022-12-23 04:31:22', 1), 
('John', 'Harris', 'Sullivan', 'scott09@lee-smith.com', 'R3KIJIMn*k', '262.272.19', '2020-08-30 17:21:25', 3), 
('Karen', 'Boone', 'Snyder', 'sarabaker@hotmail.com', 'D#Kw4JQbUl', '554.801.05', '2022-07-09 06:05:15', 3), 
('Matthew', 'Murray', 'Snyder', 'zbailey@kent.com', 'QP20fIdi&^', '(393)852-0', '2022-07-22 11:39:37', 3), 
('Keith', 'Lopez', 'Farley', 'jennifer74@crawford.com', 'I%i3Os!(mJ', '853.589.53', '2023-01-13 22:25:38', 3), 
('Elizabeth', 'Martin', 'Nelson', 'michaelsandra@clark-hamilton.com', 's6#YUJtZ*k', '(819)988-4', '2022-09-24 07:44:07', 2), 
('Nicholas', 'Allen', 'Garcia', 'davisjames@yahoo.com', 'u@5ZJ#Kgdm', '(447)377-4', '2023-03-19 18:23:21', 2), 
('Derek', 'Hernandez', 'Sanchez', 'stephanie72@yahoo.com', 'b6A#Xsdi@P', '1-390-499-', '2021-12-27 15:56:01', 1), 
('James', 'Harris', 'Rodriguez', 'lucasjacob@hawkins.com', '(!2%bGPi5U', '335-119-25', '2020-02-14 10:35:17', 3);

-- Tabla marca (10 registros)

INSERT INTO marca (nombre_marca, fecha_creacion) VALUES 
('Innovatech', '2022-03-15 07:30:21'), 
('TechAdvance', '2020-11-22 14:45:35'), 
('GadgetGuru', '2021-08-30 09:15:10'), 
('FutureTech', '2023-01-05 11:20:47'), 
('EcoSolutions', '2022-07-12 18:30:33'), 
('SmartTech', '2021-05-23 16:40:29'), 
('GreenEnergy', '2023-04-17 13:55:50'), 
('NextGen', '2020-09-08 12:10:42'), 
('ModernWorks', '2022-12-25 19:35:27'), 
('EcoTech', '2023-02-09 08:05:15');

-- Tabla producto (10 registros)

INSERT INTO producto (nombre_producto, id_marca, modelo, stock, precio_proveedor, precio_publico, descripcion, id_vendedor, fecha_creacion, id_estatus) VALUES 
('UltraPhone 3000', 1, 'UP3000', 50, 300.00, 450.00, 'Smartphone de última generación con pantalla 6.5 pulgadas', 1, '2023-04-10 10:15:30', 1), 
('MegaLaptop Pro', 2, 'MLP2023', 30, 700.00, 950.00, 'Laptop de alto rendimiento para profesionales y gamers', 2, '2022-11-05 14:20:45', 1), 
('SmartWatch Health+', 3, 'SWH+2023', 100, 150.00, 250.00, 'Reloj inteligente con funciones avanzadas de salud', 3, '2021-07-21 09:30:00', 2), 
('EcoSpeaker 360', 4, 'ES360', 80, 50.00, 80.00, 'Altavoz ecológico con sonido envolvente 360 grados', 4, '2022-01-15 17:40:25', 1), 
('Gadget Drone Flyer', 5, 'GDF2023', 40, 200.00, 300.00, 'Drone con cámara HD y funciones avanzadas de vuelo', 5, '2023-03-12 12:50:35', 2), 
('Virtual Reality Set', 6, 'VRS-EXP', 25, 350.00, 500.00, 'Set completo de realidad virtual para experiencias inmersivas', 6, '2020-10-30 16:25:10', 3), 
('Portable PowerPack 500', 7, 'PP500', 150, 100.00, 150.00, 'Batería portátil de alta capacidad para dispositivos móviles', 7, '2021-12-22 08:10:50', 1), 
('Smart Thermostat X10', 8, 'STX10', 60, 120.00, 180.00, 'Termostato inteligente con control remoto y aprendizaje automático', 8, '2022-08-15 11:35:20', 1), 
('Wireless Earbuds Plus', 9, 'WEB+2023', 90, 80.00, 120.00, 'Auriculares inalámbricos con cancelación de ruido y calidad de audio superior', 9, '2023-01-20 13:45:55', 2), 
('4K Action Cam Extreme', 10, 'ACX4K', 35, 250.00, 400.00, 'Cámara de acción 4K resistente al agua y a los golpes', 10, '2020-06-05 18:55:30', 3);

-- Tabla cliente (10 registros)
INSERT INTO cliente (nombre_cliente, app_cliente, apm_cliente, correo_electronico, contrasena, telefono, fecha_creacion, id_estatus) VALUES 
('Jesse', 'Vaughn', 'Evans', 'careylauren@gmail.com', '!1NK7GiM5)', '+1-781-684', '2020-04-08 10:27:17', 2), 
('Alexis', 'Bennett', 'Long', 'schroederashley@gmail.com', '(U0!U6JzQd', '+1-336-306', '2020-05-15 18:30:01', 3), 
('Brandon', 'Hall', 'Cordova', 'hawkinskatie@gilmore.com', '2e1@JGc^(y', '(543)889-6', '2021-09-19 04:50:49', 3), 
('Caitlin', 'Smith', 'Fuller', 'dcarrillo@murray.com', 'R!3uPuy)dg', '+1-068-860', '2020-07-02 05:49:20', 3), 
('Monica', 'Silva', 'Reynolds', 'bradleyangela@hotmail.com', ')2QwSEpdhE', '914.884.22', '2021-04-23 12:21:46', 3), 
('Lawrence', 'Murray', 'Mcneil', 'leetaylor@mccarty.com', '#U23aZJp#L', '245.409.78', '2022-07-24 10:45:36', 1), 
('Jennifer', 'Mcknight', 'Brown', 'proctormarissa@henson.org', '_CWBOeo000', '429-954-70', '2020-03-09 09:03:24', 3), 
('Brittany', 'Hunt', 'Webb', 'christine31@gutierrez.org', '1Ar*Djgy&I', '(780)233-9', '2020-09-02 13:45:59', 2), 
('Michael', 'Thompson', 'Morgan', 'robertmatthews@hotmail.com', 'H6JSIgN*$6', '(573)648-1', '2022-04-08 06:56:24', 1), 
('Daryl', 'Gonzales', 'Parker', 'jesuswolf@nash.com', '&u%Bpp7wu4', '327.073.22', '2023-03-06 16:32:53', 3);

-- Tabla ubicación (10 registros)

INSERT INTO ubicacion (nombre_contacto, numero_contacto, region, manzana, numero_interior, numero_exterior, codigo_postal, calles, referencia, id_cliente) VALUES 
('Ricardo Smith', '191.479.44', 'Montana', '34464', '90725', '5735', '41090', 'Ann Land', 'Yeah coach face leader since decision section stuff.', 4), 
('Phillip Hughes', '+1-871-777', 'Texas', '65596', '3565', '270', '34911', 'Carlson Gardens', 'Good sometimes production thing inside.', 2), 
('Tabitha Taylor', '406.838.91', 'Georgia', '56956', '58648', '5000', '54028', 'Richard Crossing', 'Memory experience where nor Mr space cold.', 7), 
('Karla Elliott', '173.705.18', 'Missouri', '8289', '0692', '45598', '08802', 'Maldonado Forges', 'Traditional foot bag trip best too to.', 10), 
('Scott Goodwin', '279-747-50', 'California', '024', '9662', '70140', '64543', 'Oneal Crossing', 'International short unit coach.', 6), 
('Cristina Palmer', '+1-034-198', 'Idaho', '26632', '1953', '182', '82119', 'Hamilton Lake', 'Hold finish simple main green.', 1), 
('Noah Mcgrath', '088-236-49', 'Kentucky', '1005', '8239', '3923', '77000', 'Marshall Isle', 'Human political consider glass give should cultural.', 8), 
('Charles Moore', '+1-876-761', 'Virginia', '84469', '208', '697', '66979', 'Maddox Burg', 'Protect rest on billion need along.', 10), 
('Tara Lopez', '001-524-75', 'Indiana', '508', '165', '62730', '69629', 'Fields Fords', 'Improve help alone those official.', 4), 
('Michael Williams', '001-622-41', 'Wisconsin', '57963', '5664', '55674', '73810', 'Kyle Plains', 'Individual take pick.', 3);

-- Tabla venta (10 registros)

INSERT INTO venta (id_vendedor, id_cliente, id_producto, cantidad_producto, fecha_venta) VALUES 
(8, 6, 3, 9, '2020-02-10 16:27:17'), 
(9, 4, 1, 6, '2023-04-13 22:50:19'), 
(7, 6, 8, 3, '2022-08-02 20:18:14'), 
(3, 10, 10, 7, '2023-02-14 11:40:34'), 
(6, 7, 1, 6, '2020-06-06 23:07:48'), 
(7, 5, 1, 2, '2021-06-02 08:02:10'), 
(3, 7, 8, 1, '2021-01-24 20:02:03'), 
(10, 8, 4, 8, '2023-06-14 08:44:46'), 
(9, 6, 9, 4, '2023-08-23 13:07:50'), 
(3, 5, 1, 4, '2022-05-06 20:02:14'), 
(7, 3, 6, 7, '2023-06-02 16:53:11'), 
(2, 10, 10, 2, '2022-11-06 01:47:37'), 
(3, 1, 8, 2, '2023-06-20 23:42:32'), 
(3, 3, 1, 5, '2021-02-19 08:23:39'), 
(9, 3, 4, 1, '2020-08-09 13:19:31'), 
(5, 7, 8, 4, '2021-11-12 18:57:22'), 
(8, 5, 7, 3, '2023-08-14 05:34:16'), 
(8, 8, 10, 3, '2023-09-19 15:34:04'), 
(3, 6, 6, 8, '2023-04-02 04:16:07'), 
(3, 3, 3, 4, '2021-07-29 07:59:03'), 
(10, 1, 5, 8, '2021-06-12 20:13:26'), 
(4, 1, 4, 6, '2020-03-09 21:27:23'), 
(4, 1, 7, 8, '2021-05-24 07:48:29'), 
(4, 6, 9, 8, '2023-10-15 20:10:43'), 
(5, 1, 8, 6, '2023-02-02 18:40:47');

