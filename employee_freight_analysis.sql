SELECT 
    EmployeeID,
    COUNT(*) AS Total_pedidos,
    SUM(Freight) AS Costo_total_por_empleado
FROM Orders
GROUP BY EmployeeID
HAVING Total_pedidos > 50
ORDER BY Costo_total_por_empleado DESC;
