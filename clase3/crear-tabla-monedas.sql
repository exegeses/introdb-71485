# creación de tabla monedas
create table monedas
(
    id tinyint unsigned primary key auto_increment not null,
    aproximado float unsigned not null,
    exacto decimal(9,2) unsigned not null
);

-- Inserción de datos
insert into monedas
    VALUES
        ( DEFAULT, 12.5, 12.5 ),
        ( DEFAULT, 26.84, 26.84 ),
        ( DEFAULT, 38.4, 38.4 ),
        ( DEFAULT, 6, 6 ),
        ( DEFAULT, 50.32, 50.32 ),
        ( DEFAULT, 28, 28 );