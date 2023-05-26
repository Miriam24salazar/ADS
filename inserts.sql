insert into cuenta (id_cuenta, usuario, contrasena) values (1, 'admin', 'adminadmin');
insert into cuenta (id_cuenta, usuario, contrasena) values (2, 'jefe', 'jefejefe');
insert into cuenta (id_cuenta, usuario, contrasena) values (3, 'jefe2', 'jefe2jefe2');
insert into cuenta (id_cuenta, usuario, contrasena) values (4, 'anahi', 'anahianahi');
insert into cuenta (id_cuenta, usuario, contrasena) values (5, 'paco', 'pacopaco');
insert into cuenta (id_cuenta, usuario, contrasena) values (6, 'maria', 'mariamaria');
insert into cuenta (id_cuenta, usuario, contrasena) values (7, 'sofia', 'sofiasofi');
insert into cuenta (id_cuenta, usuario, contrasena) values (8, 'andres', 'andresand');
insert into cuenta (id_cuenta, usuario, contrasena) values (9, 'saul', 'saulsaul');


insert into cuadrilla (id_cuadrilla, nombre) values (1, 'roja');
insert into cuadrilla (id_cuadrilla, nombre) values (2, 'verde ');


insert into actividad (id_actividad, id_cuadrilla, id_colonia, nombre,descripcion,estado,imagenes) values (1,1, 5, 'bar barrer', 'Barrer una calle es una actividad importante para mantener las ciudades y pueblos limpios y agradables para sus habitantes y visitantes, es importante que se recoja toda la basura y la suciedad acumulada, incluyendo hojas, ramas, envoltorios y otros desechos', 'A','html://');
insert into actividad (id_actividad, id_cuadrilla, id_colonia, nombre,descripcion,estado,imagenes) values (2,1, 6, 'areas recreativas', 'Inspección: Antes de comenzar la limpieza, es importante realizar una inspección de la zona para identificar los residuos. Retirar basura y residuos: Una vez que se ha identificado la basura y los residuos, se deben retirar del área.Limpieza: Una vez que se han retirado los residuos, se procede a la limpieza de la zona. ', 'H','');
insert into actividad (id_actividad, id_cuadrilla, id_colonia, nombre,descripcion,estado,imagenes) values (3,2, 7, 'edificios ', 'Inspección: Antes de comenzar la limpieza, es importante realizar una inspección del edificio para identificar las áreas más sucias.Retirar basura y residuos: Una vez que se ha identificado la basura y los residuos, se deben retirar de las áreas comunes.Limpieza: Después de retirar la basura y los residuos, se procede a la limpieza de las superficies.', 'A','');
insert into actividad (id_actividad, id_cuadrilla, id_colonia, nombre,descripcion,estado,imagenes) values (4,2, 8, 'los grandes muros', 'la limpieza de muros grandes requiere una inspección cuidadosa, la preparación adecuada del área, la remoción de suciedad, el enjuague y el secado. Dependiendo del tipo de suciedad o manchas en el muro', 'I','');


insert into col-act (id_actividad,id_colonia) values (1, 5);
insert into col-act (id_actividad,id_colonia) values (2, 6);
insert into col-act (id_actividad,id_colonia) values (3, 7);
insert into col-act (id_actividad,id_colonia) values (4, 8);