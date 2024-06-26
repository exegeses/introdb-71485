# Modificaciones de la estructura de una tabla

## Cambiar el nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreOLD nombreNew tipoDato;  

    ALTER TABLE personas  
      CHANGE alta fecha date not null;


## Cambiar tipo de datos (o características) de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato;

    ALTER TABLE personas  
      MODIFY apellido varchar(45) not null;

## Agregar una columna al final de una tabla

    ALTER TABLE nombreTabla  
      ADD nombreColumnaNueva tipoDato características;  

    ALTER TABLE personas  
      ADD activo boolean not null;  

## Agregar una columna luego de una columna existente de una tabla

    ALTER TABLE nombreTabla  
      ADD nombreColumnaNueva tipoDato características  
      AFTER nombreColumnaExistente; 

    ALTER TABLE personas  
      ADD informe varchar(1000)  
      AFTER alta;

## Eliminar una columna de una tabla

    ALTER TABLE nombreTabla  
      DROP nombreColumna;  

    ALTER TABLE personas  
      DROP informe;  

## Agregar un Foreign Key  

    ALTER TABLE nombreTabla  
      ADD  
        FOREIGN KEY (idColumnaFK)  
        REFERENCES nombreTabla2 (idColumnaPK);  

## Cambiar nombre de una tabla: 

    RENAME TABLE nombreViejo TO nombreNuevo;  
