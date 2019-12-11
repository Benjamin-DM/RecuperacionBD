use empleados;
-- 1
select empleado.nombre, empleado.apellido1, empleado.apellido2, departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo;
-- 2
select departamento.nombre, empleado.nombre,empleado.apellido1
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo group by departamento.nombre asc;
-- 3
select departamento.codigo, departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.codigo_departamento = '1' or empleado.codigo_departamento = '2' or empleado.codigo_departamento = '3' or
empleado.codigo_departamento = '4'or empleado.codigo_departamento = '5' or empleado.codigo_departamento = '6'or empleado.codigo_departamento = '7';
-- 4

-- 5
select departamento.nombre, empleado.nif
from departamento
inner join empleado on departamento.codigo = empleado.nif
where empleado.nif = '38382980M';
-- 6
select departamento.nombre, empleado.nombre
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.nombre = 'Pepe' and empleado.apellido1= 'Ruiz' and empleado.apellido2='Santana';
-- 7
select empleado.nombre, empleado.apellido1 , empleado.apellido2 , departamento.nombre
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo 
where departamento.nombre = 'I+D' group by empleado.nombre asc;
-- 8
select empleado.nombre, empleado.apellido1 , empleado.apellido2 , departamento.nombre
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo 
where departamento.nombre = 'I+D' or departamento.nombre = 'Sistemas' or departamento.nombre = 'Contabilidad' group by empleado.nombre asc;
-- 9
select empleado.nombre, empleado.apellido1 , empleado.apellido2 , departamento.presupuesto
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo 
where departamento.presupuesto != '100000' or departamento.presupuesto != '200000';
-- 10
select departamento.nombre, empleado.apellido2
from empleado 
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.apellido2 = NULL;