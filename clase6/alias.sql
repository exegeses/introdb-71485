# Alias en SQL
/*
    En SQL podemos renombrar el enunciado de una columna
    con el motivo de qué quede mejor en un reporte
    Nota: no se cambia realmente el nombre de la columna
    sino que si cambia temporalmente el enunciado que se muestra en el reporte
    Implementamos un alias con la palabra reservada **AS** (se puede omitir)
*/

SELECT  prdNombre AS Producto,
        prdPrecio AS 'Precio Contado',
        prdPrecio * 1.05 AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;


SELECT  prdNombre AS Producto,
        prdPrecio AS 'Precio Contado',
        prdPrecio * 1.05 AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos AS p
JOIN marcas AS m
    ON p.idMarca = m.idMarca
JOIN categorias AS c
    ON p.idCategoria = c.idCategoria;