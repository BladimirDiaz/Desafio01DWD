create database DW_ventass

use DW_Ventass
CREATE TABLE Ventas (
    IdVenta INT NOT NULL,
    Cliente VARCHAR(150) NOT NULL,
    Departamento VARCHAR(100) NOT NULL,
    Producto VARCHAR(100) NOT NULL,
    Cantidad INT NOT NULL,
    Precio DECIMAL(12, 2) NOT NULL,
    FechaVenta varchar(60) NOT NULL,
    VentaTotal DECIMAL(14, 2) NOT NULL,   
    NombreCompletoProducto VARCHAR(250) NOT NULL, 
);


USE DW_Ventas;
GO

--1
SELECT Departamento,COUNT(IdVenta) AS CantidadVentas,SUM(Cantidad) AS TotalUnidadesVendidas FROM Ventas
GROUP BY  Departamento ORDER BY  CantidadVentas DESC;

	--2
SELECT  Departamento,SUM(VentaTotal) AS MontoTotalVendido FROM  Ventas
GROUP BY  Departamento ORDER BY MontoTotalVendido DESC;


--3
SELECT TOP 1 Producto,SUM(VentaTotal) AS MontoTotalVendido,SUM(Cantidad) AS TotalUnidadesVendidas
FROM Ventas GROUP BY Producto ORDER BY MontoTotalVendido DESC;
GO