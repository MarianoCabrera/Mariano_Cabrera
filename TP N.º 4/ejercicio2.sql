CREATE TABLE PAIS (
    pais_id INT NOT NULL,
    nombre_pais VARCHAR(40) NOT NULL,
    PRIMARY KEY (pais_id)
);

CREATE TABLE provincia (
    provincia_id INT NOT NULL,
    nombre_provincia VARCHAR(40) NOT NULL,
    pais_id INT NOT NULL,
    PRIMARY KEY (provincia_id),
    FOREIGN KEY (pais_id) REFERENCES PAIS (pais_id)
);

CREATE TABLE localidad (
    codigo_localidad INT NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    codigo_postal INT NOT NULL,
    provincia_id INT NOT NULL,
    PRIMARY KEY (codigo_localidad),
    FOREIGN KEY (provincia_id) REFERENCES provincia (provincia_id)
);

CREATE TABLE empleado (
    empleado_id INT NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    dni CHAR(10) NOT NULL,
    telefono CHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    fecha_alta DATE NOT NULL,
    PRIMARY KEY (empleado_id)
);

-- Insertar valores en la tabla PAIS
INSERT INTO PAIS (pais_id, nombre_pais) VALUES
(1, 'España'),
(2, 'Argentina'),
(3, 'Francia');

-- Insertar valores en la tabla provincia
INSERT INTO provincia (provincia_id, nombre_provincia, pais_id) VALUES
(1, 'Madrid', 1),
(2, 'Buenos Aires', 2),
(3, 'París', 3);

-- Insertar valores en la tabla localidad
INSERT INTO localidad (codigo_localidad, nombre, codigo_postal, provincia_id) VALUES
(1, 'Madrid Centro', 28001, 1),
(2, 'La Plata', 1900, 2),
(3, 'París Centro', 75001, 3);

-- Insertar valores en la tabla empleado
INSERT INTO empleado (empleado_id, nombre, dni, telefono, email, fecha_alta) VALUES
(1, 'Juan Pérez', '1234567890', '123456789', 'juan@ejemplo.com', '2021-01-01'),
(2, 'María Rodríguez', '0987654321', '987654321', 'maria@ejemplo.com', '2021-02-01'),
(3, 'Carlos López', '5555555555', '555555555', 'carlos@ejemplo.com', '2021-03-01');