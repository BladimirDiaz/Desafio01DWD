create database DW_Ventas

create table Ventas (
IdVenta int primary key,
Cliente nvarchar (100),
Departamento nvarchar (100),
Producto nvarchar (100),
Cantidad int,
Precio decimal (10,2),
FechaVenta date,
Ventatotal decimal (12,2),
Nombrcomprod nvarchar (100)
)

