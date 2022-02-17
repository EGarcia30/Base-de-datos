use Inscripcion
go

select * from AlumnoMateria
select * from DocenteAlumno
Select * from DocenteMateria
select * from Docente
Select * from Materia
Select * from alumno


--registrar datos en la tabla alumno
insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0001-2022','Antonio Adalberto','Hurtado Martinez','1999-01-29','M','Estudiante',
'01234567-0','0123-200199-101-0','2275-8888','san salvador, salvador, calle arce,
1 avn norte','2500012022@mail.utec.edu.sv','Ing')

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0212-2022','Bryan Ezequiel','Diaz Martinez','1997-05-31','M','Estudiante',
'01234567-1','0123-310597-101-0','2275-8889','san salvador, salvador, calle arce,
1 avn norte','2502122022@mail.utec.edu.sv','Ing')

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0800-2022','Katherine','Quintanilla Arevalo','1997-12-31','F','Estudiante',
'01234568-1','0123-311297-101-0','2275-8890','san Miguel, san miguel, barrio candelario,
1 avn norte','2508002022@mail.utec.edu.sv','Ing')

select * from AlumnoMateria
select * from DocenteAlumno
Select * from DocenteMateria
select * from Docente
Select * from Materia
Select * from alumno

insert into AlumnoMateria values('kdbaksjdq','25-0212-2022','BAS2-i','virtual','teams',
'06:30-08:00',1)
-- modificar la longitud del campo del nombre de la materia en la tabla materia
alter table materia alter column nombremateria varchar(50)
--modificar la longitud del campo modalidad en la tb materia
alter table materia alter column modalidad varchar(20)

--ingresar materias en la base de datos
insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('BAS1-i','Base de datos 1',5,'Algo-i','Virtual')

insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('BAS2-i','Base de datos 2',5,'Bas1-i','Virtual')
insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('MAt1-t','Matematica 1',5,'0','presencial')
insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('MAt2-t','Matematica 2',5,'Mat1-t','presencial')
insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('filo-h','filosofia',5,'0','semi-presencial')
insert into Materia(CodigoMateria,NombreMateria,UnidadesValorativas,
Prerrequisito,Modalidad) values('ETH-e','Etica',5,'filo-h','semi-presencial')

select * from AlumnoMateria
select * from DocenteAlumno
Select * from DocenteMateria
select * from Docente
Select * from Materia
Select * from alumno

--inscribir una materia
insert into AlumnoMateria values('kdbaksjdqu','25-0212-2022','BAS2-i','virtual','teams',
'06:30-08:00',1)
insert into AlumnoMateria values('asdasdad','25-0800-2022','BAS2-i','virtual','teams',
'06:30-08:00',1)
insert into AlumnoMateria values('fwesad','25-0800-2022','filo-h','semi-presencial','teams-Fm-201',
'08:00-9:30',1)

-- que materias lleva inscrita la alumna katherine quintanilla arevalo con carnet 25-0800-2022

select * from DocenteAlumno
Select * from DocenteMateria
select * from Docente
Select * from Materia
Select * from alumno
select * from AlumnoMateria

select a.carnet,a.nombre,a.apellido,
i.CodigoInscripcion,m.CodigoMateria,M.NombreMateria,i.modalidad,i.Aula,
i.Horario,i.Seccion
from alumno a, AlumnoMateria I, Materia M
where a.carnet='25-0800-2022'
and a.carnet=i.Carnet
and m.CodigoMateria=i.CodigoMateria

--ingresar datos a la tb docente
insert into docente values(3618,'Antonio Adalberto','Hurtado Martinez',
'01234567-0','0123-200899-101-0','Ing','DTC','antonio.hurtado@mail.utec.edu.sv',
'1999-08-20','2275-8888','san salvador, salvador 1 avn sur centro de gobierno')


insert into docente values(3848,'Claudia patricia','gomez melendez',
'01234567-1','0123-220599-101-0','LIC','DHC','claudia.gomez@mail.utec.edu.sv',
'1999-05-22','7777-1111','san salvador, salvador 1 avn sur centro de gobierno')
select * from Docente
select * from Materia
select * from DocenteMateria
insert into DocenteMateria values
(3618,'BAS2-i','FICA','Desarrollo','06:30-08:00','teams',1)

insert into DocenteMateria values
(3618,'BAS2-i','FICA','Desarrollo','18:40-20:10','teams',2)
insert into DocenteMateria values
(3618,'BAS1-i','FICA','Desarrollo','08:00-09:30','teams',1)
insert into DocenteMateria values
(3618,'Mat1-t','FICA','Matematica','08:00-11:00','teams',2)


--un reporte de las materias que imparte el docente antonio hurtado
select * from Docente
select * from DocenteMateria
select * from Materia

select d.CodigoDocente,d.Nombre,d.Apellido,
m.CodigoMateria,m.NombreMateria,m.Modalidad,
c.Escuela,c.Horario,c.Aula,c.Seccion
from Docente d, DocenteMateria c, Materia m
where d.CodigoDocente=3618
and d.CodigoDocente=c.CodigoDocente
and m.CodigoMateria=c.CodigoMateria
