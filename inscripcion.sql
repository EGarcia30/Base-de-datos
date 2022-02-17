--crear la base de datos inscripcion
create database inscripcion
go
--usar la base de datos creada
use inscripcion
-- crear la tabla docente
create table Docente(
CodigoDocente int constraint pkCodDocente primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Dui varchar(10) constraint UqDuiDoc unique,
Nit varchar(17) constraint UqNit unique,
Especialidad varchar(3) constraint chEsp check(Especialidad in('Tec',
'Ing','Lic','Arq','Dr')),
TipoDocente varchar(3) constraint chDt check(tipodocente in('DTC','DHC')),
Mail varchar(100),
FechaNacimiento date,
Telefono varchar(9) constraint uqTel unique,
Direccion varchar(200) 
)
go
-- crear la tabla Materia
create table Materia(
CodigoMateria varchar(10) constraint pkCodMat primary key,
NombreMateria varchar constraint uqNombreMat unique,
UnidadesValorativas int,
Correlativo int identity,
Prerrequisito varchar(10),
Modalidad varchar(12)
)
go
--crear la tabla alumno
create table Alumno(
Carnet varchar(12) constraint pkCarnet primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
FechaNacimiento date,
Sexo varchar(1) constraint chSexo check (sexo in('f','m')),
Ocupacion varchar(50),
Dui varchar(10) constraint UqDuiAlum unique,
Nit varchar(17) constraint UqNitAlums unique, 
Telefono varchar(9) constraint uqTelAlum unique,
Direccion varchar(200),
Mail varchar(100),
Carrera varchar(3) constraint chEspAlum check(carrera in('Tec',
'Ing','Lic','Arq','Dr')),
)
go

/*create table cualquiera(
datocualquiera int primary key,
dui varchar(10) unique,
Nit varchar(17) unique
)

-- como eliminar la tabla cualquiera
drop table cualquiera*/

--crear la tabla Docente-Materia
create table DocenteMateria(
codigoCargaAcademica int identity(1,10) constraint pkCCA primary key,
CodigoDocente int,
CodigoMateria int,
Facultad varchar(50),
Escuela varchar(50),
Horario varchar(20),
Aula varchar(20),
Seccion int
);
go
--cambiar el tipo de dato del codigo de la materia de la tabla docentemateria
alter table docentemateria alter column CodigoMateria varchar(10)
go
--crear una relacion entre la tabla Docente y Docente Materia
alter table DocenteMAteria
add constraint FKDocMateria foreign key (codigodocente) references
Docente(codigodocente)
go
--crear una relacion entre la tabla Materia y Docente Materia
alter table docentemateria
add constraint FKMateriaDocente foreign key(codigomateria) references
Materia(codigomateria)
go

--crear la tabla Docente y DocenteAlumno, y agregar las relaciones necesarias
create table DocenteAlumno(
Correlativo int identity(1,1) constraint pkCod primary key,
Carnet varchar(12),
CodigoDocente int,
Facultad varchar(50),
Seccion int,
Escuela varchar(20),
Horario varchar(20),
Aula varchar(10),
constraint FKAlumnoDocente foreign key(carnet) 
references alumno(carnet),
constraint FKDocenteAlumnos foreign key(codigoDocente)
references docente(codigodocente)
)
go
--crear la tabla de ALumno y alumnoMateria con sus relaciones necesarias
create table AlumnoMateria(
CodigoInscripcion varchar(10) constraint pkCodIns primary key,
Carnet varchar(12),
CodigoMateria varchar(10),
Modalidad varchar(20),
Aula varchar(20),
Horario varchar(20),
Seccion int
constraint fkMateriaAlumno foreign key (carnet)
references Alumno(carnet),
constraint fkAlumnoMateria foreign key(codigomateria)
references materia(codigomateria)
);
go
