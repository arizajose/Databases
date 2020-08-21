/*Crear Tablas DBSQL*/
/*Usando la interface*/
/*
 1.- Selecione la base de datos y en su carpeta "Tables" use la opci�n "New table".
 2.- En la nueva ventana podra definir las propiedades (columnas) de la tabla, su tipo
     de dato y si requerien ser o no ser nulos.
 3.- Para crear la tabla haga click derecho en la pesta�a de esta y seleccione "Save table".
     Se le pedir� asignar el nombre a la tabla antes de guardarse.
 4.- Para a�adir un registro a la tabla, haga click derecho en la tabla dentro de la carpeta
     "Tables" y seleccione la opci�n "Edit Top 200 rows".
 5.- Agregue registro en la tabla. Al pasar al siguiente registro el anterior definido se autoguardar�.
 6.- Puede modificar cualquier campo del registro asi como tambi�n eliminarlo con click derecho y "Delete".
 7.- Para mostrar todos los registros de la tabla, haga click derecho y "Select Top 1000 rows".
*/
/*Usando c�digo*/
--crear tabla productos --
Create table Productos(
id_product varchar(30) not null,
name_product nvarchar(50),
description_product nvarchar(200),
stock_product int,
soldOut_product bit, --almacena datos booleanos en SQLServer: 0(false) y 1 (true)
)
Drop table Productos --borrar tabla

/*Alterar/modificar una tabla*/
/*Usando la interface
 1.- Seleccione la tabla a modificar con click derecho -> opci�n "Design". La vetnana
     es similar a la que le permite crear las tablas.
 2.- Modifique los campos deseados y guarde los cambios con "Ctrl + S".
 3.- En el caso de eliminar campos que contienen datos anteriormente, estos se borrar�n
     por completo.
*/

/*Usando c�digo*/
Alter table Productos --Agregar columna
Add 
price_product numeric(10,2) 

Alter table Productos --Eliminar columna
Drop column price_product

Alter table Productos --Modificar columna
Alter column description_product nvarchar(150) 