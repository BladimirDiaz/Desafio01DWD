CREATE DATABASE DW_Ventas;
GO

USE DW_Ventas;
GO

CREATE TABLE Ventas(
IdVenta INT,
Cliente VARCHAR(100),
Departamento VARCHAR(50),
Producto VARCHAR(100),
Cantidad INT,
Precio DECIMAL(10,2),
FechaVenta DATE,
VentaTotal Decimal(12,2),
NombreCompletoProducto VARCHAR(200)
);