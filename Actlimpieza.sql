CREATE TABLE `actividad`  (
  `id_actividad` int NOT NULL,
  `id_cuadrilla` int NOT NULL,
  `id_colonia` int NOT NULL,
  `nombre` varchar(30) NULL,
  `descripcion` longtext NULL,
  `estado` char(1) NULL,
  `imagen` varchar(255) NULL,
  PRIMARY KEY (`id_actividad`)
);

CREATE TABLE `colonia`  (
  `id_colonia` int NOT NULL,
  `codigoPostal` int NULL,
  `asentamiento` varchar(60) NULL,
  `tipo_asentamiento` varchar(30) NULL,
  PRIMARY KEY (`id_colonia`)
);

CREATE TABLE `colonias_has_actividad`  (
  `id_actividad` int NOT NULL,
  `id_colonia` int NOT NULL,
  PRIMARY KEY (`id_actividad`, `id_colonia`)
);

CREATE TABLE `cuadrilla`  (
  `id_cuadrilla` int NOT NULL,
  `nombre` varchar(60) NULL,
  PRIMARY KEY (`id_cuadrilla`)
);

CREATE TABLE `cuenta`  (
  `id_cuenta` int NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  PRIMARY KEY (`id_cuenta`)
);

CREATE TABLE `usuarios`  (
  `id_usuario` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `tipoUsuario` varchar(30) NOT NULL,
  `correo` varchar(60) NULL,
  `telefono` int NOT NULL,
  `id_cuenta` int NOT NULL,
  `id_cuadrilla` int NULL,
  PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `actividad` ADD CONSTRAINT `fk_id_cuadrilla` FOREIGN KEY (`id_cuadrilla`) REFERENCES `cuadrilla` (`id_cuadrilla`);
ALTER TABLE `colonias_has_actividad` ADD CONSTRAINT `fk_colonia_id_colonia` FOREIGN KEY (`colonia_id_colonia`) REFERENCES `colonia` (`id_colonia`);
ALTER TABLE `colonias_has_actividad` ADD CONSTRAINT `fk_actividad_id_actividad` FOREIGN KEY (`actividad_id_actividad`) REFERENCES `actividad` (`id_actividad`);
ALTER TABLE `usuarios` ADD CONSTRAINT `fk_id_cuenta` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta` (`id_cuenta`);
ALTER TABLE `usuarios` ADD CONSTRAINT `fk_id_cuadrilla` FOREIGN KEY (`id_cuadrilla`) REFERENCES `cuadrilla` (`id_cuadrilla`);

