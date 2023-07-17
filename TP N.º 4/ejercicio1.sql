CREATE TABLE ALUMNO (
    cod_matricula CHAR(20) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    dni CHAR(20) NOT NULL,
    fecha_nac DATE NOT NULL,
    email VARCHAR(40) NOT NULL,
    PRIMARY KEY (dni)
);

CREATE TABLE CURSO (
    cod_curso INT NOT NULL,
    nombre VARCHAR(40),
    PRIMARY KEY (cod_curso)
);

CREATE TABLE PROFESOR (
    profesor_id INT NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    email VARCHAR(40),
    PRIMARY KEY (profesor_id)
);

CREATE TABLE ALUMNO_CURSO (
    dni CHAR(20) NOT NULL,
    cod_curso INT NOT NULL,
    PRIMARY KEY (dni, cod_curso),
    FOREIGN KEY (dni) REFERENCES ALUMNO(dni),
    FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

CREATE TABLE CURSO_PROFESOR (
    cod_curso INT NOT NULL,
    profesor_id INT NOT NULL,
    PRIMARY KEY (cod_curso, profesor_id),
    FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso),
    FOREIGN KEY (profesor_id) REFERENCES PROFESOR(profesor_id)
);


-- sentencias para agregar valores/datos a las tablas --;


INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES ('hola1', 'Juan Pérez', '123456789', '2000-01-01', 'juan@ejemplo.com');

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES ('hola3', 'María López', '987654321', '1999-05-10', 'maria@ejemplo.com');

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES ('hola2', 'Pedro Gómez', '456789123', '2001-09-15', 'pedro@ejemplo.com');


-- Inserción de valores de ejemplo en la tabla CURSO


INSERT INTO CURSO (cod_curso, nombre)
VALUES (1, 'Matemáticas');

INSERT INTO CURSO (cod_curso, nombre)
VALUES (2, 'Historia');

INSERT INTO CURSO (cod_curso, nombre)
VALUES (3, 'Inglés');


-- Inserción de valores de ejemplo en la tabla PROFESOR


INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (1, 'Ana Rodríguez', 'Matemáticas', 'ana@ejemplo.com');

INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (2, 'Carlos Martínez', 'Historia', 'carlos@ejemplo.com');

INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (3, 'Laura Sánchez', 'Inglés', 'laura@ejemplo.com');


-- Inserción de valores de ejemplo en la tabla ALUMNO_CURSO


INSERT INTO ALUMNO_CURSO (dni, cod_curso)
VALUES ('123456789', 1);

INSERT INTO ALUMNO_CURSO (dni, cod_curso)
VALUES ('123456789', 2);

INSERT INTO ALUMNO_CURSO (dni, cod_curso)
VALUES ('987654321', 2);


-- Inserción de valores de ejemplo en la tabla CURSO_PROFESOR


INSERT INTO CURSO_PROFESOR (cod_curso, profesor_id)
VALUES (1, 1);

INSERT INTO CURSO_PROFESOR (cod_curso, profesor_id)
VALUES (2, 2);

INSERT INTO CURSO_PROFESOR (cod_curso, profesor_id)
VALUES (3, 3);