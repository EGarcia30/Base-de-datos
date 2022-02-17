use inscripcion
go

select * from Docente
select * from Materia
select * from Alumno

--Registros Docente
insert into docente values(3618,'Antonio Adalberto','Hurtado Martinez',
'01234567-0','0123-200899-101-0','Ing','DTC','antonio.hurtado@mail.utec.edu.sv',
'1999-08-20','2275-8888','san salvador, salvador 1 avn sur centro de gobierno')


insert into docente values(3848,'Claudia patricia','gomez melendez',
'01234567-1','0123-220599-101-0','LIC','DHC','claudia.gomez@mail.utec.edu.sv',
'1999-05-22','7777-1111','san salvador, salvador 1 avn sur centro de gobierno')

insert into docente values(3621,'Martin Alexander','Ortiz Zelaya',
'01234595-1','0123-010583-101-0','ING','DTC','Martin .Zelaya@mail.utec.edu.sv',
'1983-07-11','7769-5297','Ilopango, san salvador, 4a Avenida Norte')

insert into docente values(3620,'Jorge Alberto','Lopez Diaz',
'01234957-1','0123-110497-105-0','Ing','DTC','Jorge.Alberto@mail.utec.edu.sv',
'1997-04-11','2275-9999','san salvador, salvador 1 avn sur centro de gobierno')

insert into docente values(3614,'Carmen Korina','Ruiz Ramirez',
'01234567-2','0123-100599-101-0','LIC','DHC','Ruiz.Ramirez@mail.utec.edu.sv',
'1999-05-10','7777-4478','san salvador, salvador 3 avn sur')

insert into docente values(3600,'Edgardo Josue','Ortiz Ortiz',
'01234567-3','0123-010193-101-0','ING','DTC','O.-Ortiz@mail.utec.edu.sv',
'1993-01-01','7777-5287','san salvador, salvador 3 avn sur')

insert into docente values(3629,'Eduardo Alexis','Martinez Campos',
'01754597-0','0173-013587-101-0','ING','DTC','Eduardo .Campos@mail.utec.edu.sv',
'1989-02-25','7926-5280','colonia el salvador, san salvador, 4a Avenida Norte')

insert into docente values(3630,'Juan Antonio','Martinez Zepeda',
'01754839-0','0173-013587-245-0','Lic','DTC','Juan.Martinez@mail.utec.edu.sv',
'1990-06-20','7926-9364','colonia san jose, san salvador, 10ma Avenida Norte')

insert into docente values(3631,'Hector Armando','Mena Campos',
'01754456-0','0173-013587-132-0','arq','DTC','Hector.armando@mail.utec.edu.sv',
'1985-05-19','7926-5027','colonia el salvador, san salvador, 8a Avenida Norte')

insert into docente values(3632,'Rafael Ernesto','Cardona Guevara',
'01754362-0','0173-013587-293-0','Dr','DHC','Rafael.Cardona@mail.utec.edu.sv',
'1987-04-18','7926-1764','colonia San ignacio, san salvador, 62 Avenida Sur')

--Registros Materia
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

--Registro Alumno
insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0001-2022','Antonio Adalberto','Hurtado Martinez','1999-01-29','M','Estudiante',
'01234567-0','0123-200199-101-0','2275-8888','san salvador, salvador, calle arce,
1 avn norte','2500012022@mail.utec.edu.sv','Ing')

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0002-2022','Hector Josue','Gomez Martinez','1999-04-15','M','Estudiante',
'01234567-4','0123-200199-102-0','2275-9999','san salvador, salvador, calle ramirez,
1 avn norte','2500022022@mail.utec.edu.sv','Ing')

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-0002-2022','Erick Adalberto','Penado Garcia','2000-08-03','M','Estudiante',
'01234567-9','0123-200199-109-0','2275-1734','san salvador, salvador, calle ramon,
10 avn norte','2500032022@mail.utec.edu.sv','Lic')

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

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('25-3984-2021','Ignacio','Yamagiwa Cuéllar','2001-11-21','M','Estudiante',
'06282909-2','0619-211101-193-0','2882-2829','Santa Tecla, La Libertad, El Salvador. Residencial Los Sueños, Casa 750','2539842021@mail.utec.edu.sv','Ing')

insert into alumno (carnet, nombre,apellido, fechanacimiento,
sexo,ocupacion, dui, nit, telefono,direccion, Mail,carrera)
values('27-0071-2021','Adonay Alexis','Aguilar Guerrero','1998-05-27','M','Estudiante',
'01234897-0','0123-100179-101-0','2275-1834','santa tecla, la libertad, el salvador,
1 avn norte','2700712021@mail.utec.edu.sv','Ing')

select * from AlumnoMateria
select * from DocenteAlumno
Select * from DocenteMateria
select * from Docente
Select * from Materia
Select * from alumno

--10 reportes

--1. Cantidad de docentes que son Ing y su informacion general

select count(*) as [Ingenieros] from Docente
where Especialidad like '%ing%'
select CONCAT(Nombre,' ',Apellido) as [Nombre completo], Dui, Especialidad,Mail,Telefono,Direccion 
from Docente
where Especialidad like '%ing%'

--2. Se necesita saber que materias son presenciales.

select * from Materia
where Modalidad like 'presencial'

--3. Se necesita conocer los datos generales del docente que imparte en la escuela de matematica.

select dm.codigoCargaAcademica, dm.Escuela, dm.Seccion, 
CONCAT(d.Nombre,' ',d.Apellido) as [Nombre completo], d.Dui, d.Especialidad,d.Mail,d.Telefono,d.Direccion
from DocenteMateria dm, Docente d
where dm.Escuela like '%matematica%' and dm.CodigoDocente=d.CodigoDocente

--4.alumnos que inscribieron de Modalidad virtual

select am.CodigoInscripcion, am.CodigoMateria, am.Modalidad, 
CONCAT(a.Nombre,' ',a.Apellido) as [Nombre completo],a.Carnet, a.Sexo,a.Dui,a.Telefono,a.Direccion,a.Mail,a.Carrera
from AlumnoMateria am, Alumno a
where Modalidad like '%virtual%' and am.Carnet=a.Carnet

--5.Cantidad de alumnos que estan cursando La Lic y su informacion
select count(*) as [Alumnos Lic] from Alumno
where Carrera like '%Lic%'
select * from Alumno
where Carrera like '%Lic%'

--6.Cantidad de alumnos que estan cursando La ing y su informacion
select count(*) as [Alumnos Ing] from Alumno
where Carrera like '%ing%'
select * from Alumno
where Carrera like '%ing%'

--7. se necesita saber que materia se imparte en la seccion 1
select dm.codigoCargaAcademica,dm.CodigoDocente,dm.Aula,dm.Seccion,
m.*
from DocenteMateria Dm, Materia m
where dm.Seccion=1 and dm.CodigoMateria=m.CodigoMateria