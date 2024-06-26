# consulta a través de una tabla intermedia (pivot)

-- traer el nombre del producto (productos)
-- traer el nombre del proveedor (proveedores)


SELECT
        prdNombre AS Producto,
        prvNombre AS Proveedor
    FROM productos, proveedores, productos_proveedores
    WHERE productos.idProducto = productos_proveedores.idProducto
      AND productos_proveedores.idProveedor = proveedores.idProveedor;

/* técnica JOIN */

SELECT
        prdNombre AS Producto,
        prvNombre AS Proveedor
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON productos_proveedores.idProveedor = proveedores.idProveedor;

/*
    También vamos agregar el
        nombre de la marca de la tabla marcas
    y el
        nombre de la categoría de la tabla categorías
*/

SELECT
    prdNombre AS Producto,
    mkNombre AS Marca,
    catNombre AS Categoría,
    prvNombre AS Proveedor
FROM productos, proveedores, productos_proveedores, marcas, categorias
WHERE productos.idProducto = productos_proveedores.idProducto
  AND productos_proveedores.idProveedor = proveedores.idProveedor
  AND productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria;



SELECT
            prdNombre AS Producto,
            mkNombre AS Marca,
            catNombre AS Categoría,
            prvNombre AS Proveedor
    FROM productos
         JOIN productos_proveedores
              ON productos.idProducto = productos_proveedores.idProducto
         JOIN proveedores
              ON productos_proveedores.idProveedor = proveedores.idProveedor
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;
