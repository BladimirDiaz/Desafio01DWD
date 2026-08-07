create database DW_Ventas

use dw_ventas

Create table Ventas (IdVenta INT,
Cliente Varchar(100),
Departamento Varchar(50),
Producto varchar(100),
Cantidad int,
Precio Decimal(10,2),
FechaVenta Varchar(50),

VentaTotal Decimal (18,2),
NombreCompletoProducto Varchar(155));

SELECT * FROM Ventas

-------- Cantidad de ventas por departamento
Select departamento, count(*) as cantidadventas
from ventas
group by Departamento
order by CantidadVentas desc;

-------- Monto total vendido por departamento
Select departamento, SUM(Ventatotal) as MontoTotalVendido
from ventas
group by Departamento order by MontoTotalVendido desc;

-------- Producto con mayor monto vendido
Select top 1 producto, SUM(VentaTotal) as MontoTotalVendido
from ventas
group by producto
order by MontoTotalVendido desc;