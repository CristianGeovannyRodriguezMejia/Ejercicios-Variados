create database ProyectoDB;
Use ProyectoDB;

--Tabla ALUMNOS
create table alumnos(ID varchar(5),Nombres varchar(30)NOT NULL,
Apellidos varchar(30)NOT NULL,
constraint xID primary key (ID));

insert into alumnos values(001,'Cristian','Rodriguez')
insert into alumnos values(002,'Erick','Villeda')
insert into alumnos values(003,'Cristian','Benjamin')
insert into alumnos values(004,'Rigel','Natsuki')
insert into alumnos values(005,'Nicolle','Castillo')
insert into alumnos values(006,'Daniel','Arce')
insert into alumnos values(007,'Osaldo','Carpio');


--Tabla Grados
create table grados(CodGrado varchar(4),Grado varchar(30)NOT NULL,
constraint xCodGrado primary key (CodGrado));

insert into grados values('02CA','2º Contador A')
insert into grados values('02GA','2º General A')
insert into grados values('DS03','3º Desarrollo De Software');

select*from grados;


--Tabla de Materias
create table materias(CodMat varchar(4),Materia varchar(30)NOT NULL,
constraint xCodMat primary key (CodMat));

  insert into materias values('LEN2','Lenguaje II')
  insert into materias values('MAT2','Matematica II')
  insert into materias values('TEC3','Tecnologia III');

--Tabla de Matriculas
create table matricula(ID1 varchar(5),CodGrado1 varchar(4),
Año varchar(4), primary key (ID1,Año),
constraint xID1 foreign key (ID1) references alumnos (ID),
constraint xCodGrado1 foreign key (CodGrado1) references grados (CodGrado));

insert into matricula values('0001','DS03','2020')
insert into matricula values('0002','02CA','2020')
insert into matricula values('0003','02CA','2020')
insert into matricula values('0004','DS03','2020')
insert into matricula values('0005','DS03','2020')
insert into matricula values('0006','02GA','2020')
insert into matricula values('0007','02GA','2020');


--Tabla de PROMEDIOS
create table promedio(ID2 varchar(5),
CodGrado2 varchar(4),
CodMat2 varchar(4),
Año varchar(4),
promedio varchar(5)
primary key(ID2,CodGrado2,CodMat2,Año),
constraint xID2 foreign key (ID2) references alumnos(ID),
constraint xCodGrado2 foreign key(CodGrado2) references grados(CodGrado),
constraint xCodMat2 foreign key(CodMat2) references materias(CodMat));


insert into promedio values('0001','DS03','LEN2','2020','9.00');
insert into promedio values('0001','DS03','MAT2','2020','10.00');
insert into promedio values('0001','DS03','TEC3','2020','10.00');
insert into promedio values('0002','02CA','LEN2','2020','9.00');
insert into promedio values('0002','02CA','MAT2','2020','8.00');
insert into promedio values('0002','02CA','TEC3','2020','10.00');
insert into promedio values('0002','02CA','MAT2','2020','9.00');
insert into promedio values('0002','02CA','TEC3','2020','9.50');
insert into promedio values('0003','DS03','MAT','2020','8.00');
insert into promedio values('0003','DS03','TEC3','2020','9.50');


drop table promedio;
