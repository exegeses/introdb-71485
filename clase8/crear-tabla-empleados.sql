create table empleados
(
    idEmpleado smallint unsigned auto_increment primary key not null,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    dni integer unsigned unique not null,
    nroLegajo integer unsigned unique not null,
    sueldo decimal(10,2) unsigned not null,
    telefono int unsigned not null,
    idDepartamento tinyint unsigned
);


-- ------------------------
-- inserción de datos en tabla empleados
-- ------------------------
INSERT INTO empleados
VALUES
    (1,'Juan','Quintana',36232465,36232465,25000,11234567,1),
    (2,'Juanita','Luna',36232466,36232466,25000,11234568,1),
    (3,'Carlos','Alarcón',46232464,46232464,26000,11334568,2),
    (4,'Dina','Paceros',46232463,46232463,20000,11334565,3),
    (5,'Pedro','Díaz',41232463,41232463,22000,11334865,4),
    (6,'Wilson','Fernández',26232466,6232466,45000,11534568,5),
    (7,'Tina','Ponce',42832463,42832463,20000,11332565,NULL),
    (8,'Mario','Gonzáles',43832563,43832563,20000,11734768,NULL);
