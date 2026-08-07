-- 1. Cantidad de ventas por departamento
SELECT Departamento, COUNT(*) AS CantidadVentas
FROM Ventas
GROUP BY Departamento;

-- 2. Monto total vendido por departamento
SELECT Departamento, SUM(VentaTotal) AS MontoTotal
FROM Ventas
GROUP BY Departamento;

-- 3. Producto con mayor monto vendido
SELECT TOP 1 Producto, SUM(VentaTotal) AS MontoTotal
FROM Ventas
GROUP BY Producto
ORDER BY MontoTotal DESC;