create table PAIS (
pais_id int not null,
 nombre_pais varchar (40) not null,
 primary key (pais_id),
 constraint empleado_id foreign key (empleado_id)
 references empleado (empleado_id));
 
 
create table provincia (
provincia_id int not null,
nombre_provincia varchar (40) not null,
primary key (provincia_id));

create table localidad (
codigo_localidad int not null,
nombre varchar (40) not null,
codigo_postal int not null,
primary key (codigo_localidad));

create table empleado(
empleado_id int not null,
nombre varchar(40) not null,
dni char(10) not null,
telefono char(20) not null,
email varchar (40) not null,
fecha_alta date not null,
primary key (dni));


