# Consultas en SQL

## Consultas a Servidor de bases de datos

    -- listar todas las base de datos  
    SHOW DATABASES;  

    -- listar las tablas dentro de una base de datos  
    SHOW TABLES; 

    -- Mostrar la estructura de una tabla  
    describe nombreTabla;  

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- mostrar la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos  

> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla;  

    SELECT * FROM personas;   
    SELECT * FROM destinos;  

> Cuándo hacemos **SELECT * FROM nombreTabla**  traemos todas las columnas de esa tabla

> Si queremos traer los datos de **algunas** columnas de una tabla 
> debemos mencionar los nombres de estas columnas separadas por comas (en lugar del * )

    SELECT nombreColumna, nombreColumna  
      FROM nombreTabla;    

    SELECT aeropuerto, precio  
      FROM destinos;  

### Orden de resultados
> Para ordenar los resultados de una consulta 
> utilizamos **ORDER BY** 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY precio;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;  

    SELECT nombre, apellido, alta   
       FROM personas   
       ORDER BY alta;   

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;  

### Filtrado de resultados

> Filtrar resultados de una consulta significa traer solamente los registros que cumplan con una condición dada
> Para implementar un filtro utilizamos 
> la palabra reservada **WHERE** seguida de una condición 

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8000;  

> Traer todos los destinos con un precio 
> entre 6600 y 8000

    SELECT aeropuerto, precio
      FROM destinos
      WHERE precio >= 6600
        AND precio <= 8000;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8000;  

> Traer todos los destinos de la región 5  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5;  

> Traer todos los destinos de la región 5
> Y también los de la región 7  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5  
        OR idRegion = 7;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN(5, 7);  


