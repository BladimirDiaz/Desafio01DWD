CREATE DATABASE DW_Ventas
USE DW_Ventas
GO

CREATE TABLE Ventas
(IdVenta INT PRIMARY KEY,
Cliente NVARCHAR(100),
Departamento NVARCHAR(100),
Producto NVARCHAR(100),
Cantidad INT,
Precio DECIMAL(10,2),
FechaVenta DATE,
VentaTotal DECIMAL(12,2),
NombreCompletoProducto NVARCHAR(200))


ALTER TABLE Ventas
ALTER COLUMN FechaVenta NVARCHAR(20) NULL
GO

--1. Cantidad de ventas por departamento
SELECT
Departamento,
COUNT(*) AS CantidadVentas
FROM Ventas
GROUP BY Departamento
ORDER BY Departamento ASC

--2. Monto total vendido por departamento
SELECT
Departamento,
SUM(VentaTotal) AS MontoTotalVendido
FROM Ventas
GROUP BY Departamento
ORDER BY MontoTotalVendido DESC

---3. Producto con mayor monto vendido
SELECT TOP 1
Producto,
SUM(VentaTotal) AS MontoTotal
FROM Ventas
GROUP BY Producto
ORDER BY MontoTotal DESC