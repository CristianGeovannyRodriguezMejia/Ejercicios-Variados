CREATE DATABASE Empresas;

use empresas;

create table personas(
codEmp nchar(2) primary key,
nombre nchar(20),
apellido nchar(20),
direccion nchar(40),
ciudad nchar(50),
sueldo decimal(5,2),);

insert into personas values ('01','willian','ramirez ','zapotitan','ciudad arce',12.34);
insert into personas values ('02','yenifer','ibarra ','san andres','ciudad arce',47.68);
insert into personas values ('03','ana',' figueroa','tepeyack','ciudad arce',78.09);
insert into personas values ('04','gerardo','juarez','saragoza','ciudad arce',98.05);
insert into personas values ('05','laura','zapata','cafetalon','ciudad arce',95.69);
insert into personas values ('06','cristian','lara','la esperanza','ciudad arce',17.50);
insert into personas values ('07','flor','figueroa','santa rosa','ciudad arce',84.79);
insert into personas values ('08','cristian',' martinez','rosario','santa rosa',13.44);
insert into personas values ('09','jonathan','figueroa','esperanza 3','ciudad arce',13.23);
insert into personas values ('10','rebeca', 'rodrgues','san carlos 2','ciudad arce',23.45);

select*from personas;


select distinct apellido from personas


select*from personas where apellido='figueroa'

select*from personas where sueldo >=50.00;

select*from personas where sueldo <=50.00;

select*from personas where apellido='ramirez' OR apellido='figueroa'

select*from personas where ciudad='ciudad arce' and sueldo >=50.00;

select nombre,sueldo from personas ORDER By sueldo asc
select nombre,sueldo from personas ORDER By sueldo desc;

update personas set nombre='carlos' where codEmp='03';
update personas set nombre='diana' where codEmp='05';


exec Buscar 'cristian'   

exec Mayor 

exec menor
