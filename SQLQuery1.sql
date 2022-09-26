--Crear base de datos.
create database BDAlmacen
go
--poner en uso la bd
use BDAlmacen
go
--Crear tabla 
create table Producto(
	idProd int primary key not null,
	nombreProd nvarchar(60) not null,
	precioProd numeric(18,2) not null,
	existenciaProd int not null default 0,
	existeMinProd int not null default 0,
	estadoProd bit default 'true'
)
go
-- CRUD crear, leer, actualizar y borrar
--Create o insertar registro
/*Comando Insert into nombreTabla(campo1, campo2,..., campoN)
values(dato1,dato2,...,datoN)*/
insert into Producto(idProd,nombreProd,precioProd,existenciaProd,existeMinProd)
values(1,'cafe',85,5,3)

--Read Select o Ver
/* selec * from nombreTabla */
select * from Producto
go

--Insertar mas registros
insert into Producto(idProd,nombreProd,precioProd,existeMinProd,existenciaProd)
values(2,'Limón',5,10,5),
	  (3,'Arroz libra',25,200,100),
	  (4, 'Teclado',10,10,3)
go

select * from Producto
go

--Mostrar registro por alias
select idProd as N'Código'  ,  nombreProd as N'Producto', precioProd as N'Precio', existenciaProd as N'Existencia Actual',existeMinProd  as N'Minimo' from Producto

--Update
update Producto set nombreProd='Teclado gamer'
where idProd = 4

--Delete -Eliminar
delete from Producto where idProd =2