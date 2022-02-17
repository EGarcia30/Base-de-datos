--como crear una base de datos
create database reservacion_de_hoteles

--utilizar base de datos 
use reservacion_de_hoteles

--colocar nombre reservacion
alter database reservacion_de_hoteles modify name = reservacion

--crear la tabla habitacion
create table habitacion(
No_habitacion int not null,
Descripcion varchar(100) null,
Direccion varchar(100),
Estado varchar(20) constraint ch_estado check(Estado in('Reservado','Disponible','Mantenimiento')),
foto image null,
Telefono varchar(9),
Tipo_habitacion varchar(50),
)

--Consultar tabla
select * from habitacion

--crear llave primaria
alter table habitacion add constraint pk_Nhabitacion primary key
(No_habitacion)
