CREATE DATABASE SV_ANALITYCS2

USE SV_ANALITYCS2

CREATE TABLE Ventas
(
IdVenta INT primary key,
Cliente NVARCHAR(250),
Departamento NVARCHAR(50),
Producto NVARCHAR(100),
Cantidad NVARCHAR(100),
Precio MONEY,
FechaVenta VARCHAR,
NombreCompletoProducto VARCHAR(250),
VentasTotal Decimal(12,2))




-------------------------------------
SELECT
Departamento,
COUNT(*) AS CantidadVentas
FROM Ventas
GROUP BY Departamento;
---------------------------------------
SELECT
Departamento,
SUM(VentaTotal) AS MontoTotalVendido
FROM Ventas
GROUP BY Departamento;
---------------------------------------
SELECT TOP 1
Producto,
SUM(VentaTotal) AS MontoTotalVendido
FROM Ventas
GROUP BY Producto
ORDER BY MontoTotalVendido DESC;