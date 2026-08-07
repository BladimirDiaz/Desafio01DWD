CREATE DATABASE DW_Ventas;
GO

USE DW_Ventas;
GO 


CREATE TABLE Ventas (
    IdVenta INT,
    Cliente VARCHAR(150),
    Departamento VARCHAR(100),
    Producto VARCHAR(100),
    Cantidad INT,
    Precio DECIMAL(10, 2),
    FechaVenta DATE,
    Venta_Total DECIMAL(10, 2),
    NombreCompletoProducto VARCHAR(200)
);
GO

SELECT * FROM Ventas