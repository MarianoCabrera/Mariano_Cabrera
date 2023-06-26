create table ALUMNO(
cod_matricula char(20) not null,
nombre varchar(40) not null,	
dni char(20) not null,
fecha_nac date not null,
email varchar(40) not null,
primary key (dni));

create table CURSO(
cod_curso int not null,
nombre varchar (40),
primary key (cod_curso),
constraint dni foreign key (dni)
references alumno (dni));


create table PROFRESOR(
profesor_id int not null,
nombre varchar (40) not null,
especialidad varchar (40) not null,
email varchar (40),
primary key (profesor_id));











