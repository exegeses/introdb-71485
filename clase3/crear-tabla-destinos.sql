# creación de tabla destinos
create table destinos
(
    idDestino smallint unsigned auto_increment primary key not null,
    aeropuerto varchar(45) not null,
    precio decimal(9,2)
);