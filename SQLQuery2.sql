use [[mi primer base de datos]]]

select * from Mi_primera_tabla

create table Mi_segunda_tabla(
Codigo_empleado int primary key,
Nombres varchar(50) null,
Apellidos varchar(50),
Direccion varchar(100) not null,
telefono varchar(9),
)

select * from Mi_segunda_tabla

alter table Mi_segunda_tabla add otro_campo varchar(9)

alter table Mi_segunda_tabla drop column Direccion