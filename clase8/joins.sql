-- -
SELECT nombre, apellido, departamento
  FROM empleados
  JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;
/*
    Trae los datos de los empleados que están asignados a un departamento
    Si no tienen un departamento asignado, no aparecen en el listado
*/

-- -
SELECT nombre, apellido, departamento
 FROM empleados
 LEFT JOIN departamentos
      ON empleados.idDepartamento = departamentos.idDepartamento;
/*
    trae los datos de todos los empleados
    incluso los que no tienen departamento asignado
*/
#!! sub
SELECT nombre, apellido,
       ( SELECT departamento
         FROM departamentos
         WHERE departamentos.idDepartamento = empleados.idDepartamento
       ) AS departamento
FROM empleados;

SELECT nombre, apellido, departamento
FROM empleados
 RIGHT JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento;
/*
    Trae los datos de todos los departamentos
    incluso si no hay empleados asignados
*/

### union
SELECT nombre, apellido, departamento
  FROM empleados
 LEFT JOIN departamentos
    ON empleados.idDepartamento = departamentos.idDepartamento
UNION
SELECT nombre, apellido, departamento
  FROM empleados
 RIGHT JOIN departamentos
    ON empleados.idDepartamento = departamentos.idDepartamento;