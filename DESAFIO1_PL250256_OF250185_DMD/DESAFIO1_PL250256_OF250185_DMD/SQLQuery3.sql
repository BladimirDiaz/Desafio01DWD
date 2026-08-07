CREATE DATABASE DW_Ventas;
GO
USE DW_Ventas;
GO
CREATE TABLE Ventas (
    IdVenta INT PRIMARY KEY,
    Cliente NVARCHAR(100),
    Departamento NVARCHAR(50),
    Producto NVARCHAR(100),
    Cantidad INT,
    Precio DECIMAL(10,2),
    FechaVenta DATE,
    VentaTotal DECIMAL(10,2),
    NombreCompletoProducto NVARCHAR(150)
);


