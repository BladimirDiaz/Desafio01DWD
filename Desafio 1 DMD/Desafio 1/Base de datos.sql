CREATE DATABASE DW_Ventas;
GO
USE DW_Ventas;
GO

CREATE TABLE Ventas (
    IdRegistro              INT IDENTITY(1,1) PRIMARY KEY,
    IdVenta                 INT NOT NULL,
    Cliente                 NVARCHAR(150) NOT NULL,
    Departamento            NVARCHAR(100) NOT NULL,
    Producto                NVARCHAR(100) NOT NULL,
    Cantidad                INT NOT NULL,
    Precio                  MONEY NOT NULL,
    FechaVenta              DATE NOT NULL,
    VentaTotal              MONEY NOT NULL,
    NombreCompletoProducto  NVARCHAR(200) NOT NULL
);
GO