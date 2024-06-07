# Modificar datos (registros) dentro de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**  

> Sintáxis: 

    UPDATE nombreTabla  
       SET  
            nombreColumna = valor,  
            nombreColumna3 = valor3  
      WHERE colID = valorID;

> Ejemplo práctico: 

    UPDATE personas  
       SET 
            alta = '2006-12-12'  
      WHERE id = 4;  
