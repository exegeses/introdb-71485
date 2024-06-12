create table facturas
(
    letra char(1) primary key not null,
    numero integer unsigned auto_increment primary key not null,
    clienteID integer not null,
    articuloID integer not null,
    fecha date not null,
    monto double unsigned not null
);

-- --

create table facturas
(
    letra char(1) not null,
    numero integer unsigned auto_increment not null,
    clienteID integer not null,
    articuloID integer not null,
    fecha date not null,
    monto double unsigned not null,
    primary key ( letra, numero )
);

-- ----

create table facturas
(
    letra char(1) not null,
    numero integer unsigned not null,
    clienteID integer not null,
    articuloID integer not null,
    fecha date not null,
    monto double unsigned not null,
    primary key ( letra, numero )
);