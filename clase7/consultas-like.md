# Consultas de coincidencia ( que contenga una cadena de caractéres)

> Las consultas de coincidencia se utilizan para obtener información que vamos a filtrar utilizando una cadena de caracteres
> Eso quiere decir que como filtro vamos a explicitar que contenga una cierta cadena de caractéres

> Traer nombre, precio y descripcion que en la columna descripción contenga la palabra 'Bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%';


> Utilizamos la palabra reservada **LIKE** en lugar del = 
> Y además utilizamos el símbolo de **%** (porcentaje) 
> como una especie de comodín que podría ocupar uno, varios o hasta ningún carácter.

> También podemos especificar que comience con una cadena de caracteres

    SELECT prdNombre, prdPrecio, prdDescripcion  
        FROM productos  
        WHERE prdNombre LIKE 'Home%';

> Comodín de un solo carácter (_)
> Podemos utilizar el **_** (underscore o guión bajo) como un comodín de 1 (un) solo carácter carácter

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdNombre LIKE '_iaomi%';

