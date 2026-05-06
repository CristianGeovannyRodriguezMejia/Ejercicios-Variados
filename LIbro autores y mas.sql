create database Biblioteca;
use biblioteca;

create table Libros(titulo text,autor text,editorial text,precio real,cantidad int);
insert into Libros values ('el asesitano en el oriente express','agatha christie','collins crime club',17,5);
insert into Libros values ('el principito','antonio saint','reynal & hitchock',2.12,11);
insert into Libros values ('estrella y planetas enciclopedia','anonimo','librsa ;1st edition',25,1);
insert into Libros values ('Luz negra','Álvaro menen','sin editorial en concreto',12,1);
insert into Libros values ('Don quijote de la mancha','Miguel cervantes','Saturnino calleja',18,3);
insert into Libros values ('Alicia en pais de las maravillas','Lewis carrol','Porrúa S.A de C.V',13,3);
insert into Libros values ('La odisea','Homero','Esfera de los libro',19,2);
insert into Libros values ('El patito feo','Hans Christian','Combel editorial',10,2);
insert into Libros values ('Los tres cerditos','Joseph jacobs','Combel editorial',10,2);
insert into Libros values ('Romeo y Julieta ','Willian Shakespeare','Ediciones Brontes ',16,2);


select titulo,autor,editorial from Libros;
select titulo,precio,cantidad from Libros;
select*from Libros;
truncate table Libros;






create table cliente(code int,nombre varchar(30),edad int,clave varchar(30))

insert into cliente values(01,'Cristian',17,'Real madri','cr3389705@gmail.com');
insert into cliente values(02,'Rigel',14,'boca','cr3389705@gmail.com');
insert into cliente values(03,'spica',19,'Real madri','cr3389705@gmail.com');
insert into cliente values(04,'pleyades',17,'boca','cr3389705@gmail.com');
insert into cliente values(05,'sterope',11,'Real madri','cr3389705@gmail.com');
insert into cliente values(06,'orion',8,'boca','cr3389705@gmail.com');

update cliente set clave='hola'
where nombre='pleyades';

alter table cliente
add Gmail varchar(30) null;


insert into  cliente 
truncate table cliente;

select*from cliente;

drop table cliente



