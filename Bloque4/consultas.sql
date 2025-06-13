--Duración del contrato en días con nombre y área.

SELECT
    e.nombre AS nombre_empleado,
    a.nombre AS nombre_area,
    DATEDIFF(c.fecha_fin, c.fecha_inicio) AS duracion_dias
FROM contratos c
JOIN empleados e ON c.id_empleado = e.id_empleado
JOIN areas a ON e.id_area = a.id_area;

--Salario promedio por área.

SELECT
    a.nombre AS nombre_area,
    ROUND(AVG(e.salario), 2) AS salario_promedio
FROM empleados e
JOIN areas a ON e.id_area = a.id_area
GROUP BY a.nombre;



--Empleados sin contrato activo.
SELECT
    e.id_empleado,
    e.nombre,
    a.nombre AS nombre_area
FROM empleados e
JOIN areas a ON e.id_area = a.id_area
LEFT JOIN contratos c ON c.id_empleado = e.id_empleado
WHERE c.id_contrato IS NULL OR c.fecha_fin < CURDATE();



--Actualizar salarios.
UPDATE empleados
SET salario = salario * 1.08;