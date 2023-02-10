-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2022 a las 02:43:48
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `idCita` int(11) NOT NULL,
  `Fecha_cita` datetime DEFAULT NULL,
  `Mascota_cita` int(11) NOT NULL,
  `Tipo_cita` varchar(45) DEFAULT NULL,
  `Desc_cita` longtext NOT NULL,
  `Estado_cita` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`idCita`, `Fecha_cita`, `Mascota_cita`, `Tipo_cita`, `Desc_cita`, `Estado_cita`) VALUES
(5, '2022-09-25 00:00:00', 4, 'cita', '<b>Hora:</b> 10:15am <br>\r\n<b>Doctor:</b> Nefario', '2'),
(6, '2022-09-03 00:00:00', 5, 'cita', '', '2'),
(7, '2022-09-15 00:00:00', 2, 'cita', '', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_clinico`
--

CREATE TABLE `historial_clinico` (
  `idHistorial` int(11) NOT NULL,
  `Vacunas_idVacunas` int(11) NOT NULL,
  `Enfermedades_idEnfermedades` int(11) NOT NULL,
  `Especie_historial` varchar(45) DEFAULT NULL,
  `Mascota_idMascota` int(11) NOT NULL,
  `Fecha_historial` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `idMascota` int(11) NOT NULL,
  `Nom_mascota` varchar(45) DEFAULT NULL,
  `Raza_mascota` varchar(45) DEFAULT NULL,
  `Edad_mascota` int(11) DEFAULT NULL,
  `Rh_mascota` varchar(45) DEFAULT NULL,
  `Dueño_idDueño` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`idMascota`, `Nom_mascota`, `Raza_mascota`, `Edad_mascota`, `Rh_mascota`, `Dueño_idDueño`) VALUES
(2, 'anubis', 'gato', 4, 'xd', 8),
(4, 'ender', 'perro', 5, 'o+', 8),
(5, 'Miguel', 'perro', 6, 'o-', 8),
(6, 'peta', 'sapo perro', 6, 'o+', 8),
(9, 'luna', 'amarillo', 5, '0+', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `img_productos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_productos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc_productos` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor_productos` float(10,2) DEFAULT NULL,
  `estado_productos` tinyint(1) DEFAULT NULL,
  `cant_productos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `img_productos`, `nom_productos`, `desc_productos`, `valor_productos`, `estado_productos`, `cant_productos`) VALUES
(1, '', 'portatil', 'HD', 2000.00, 1, 3),
(2, '', 'mouse', 'razer', 150000.00, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `Tipo_rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Tipo_rol`) VALUES
(1, 'cliente'),
(2, 'administrador'),
(3, 'veterinario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nom_usuario` varchar(45) DEFAULT NULL,
  `Ape_usuario` varchar(30) NOT NULL,
  `Email_usuario` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  `Tel_usuario` varchar(45) DEFAULT NULL,
  `Rol_idRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nom_usuario`, `Ape_usuario`, `Email_usuario`, `Contraseña`, `Tel_usuario`, `Rol_idRol`) VALUES
(6, 'Miguel', 'Rodriguez', 'mikycdlm@gmail.com', '96e429111c9eddc38392127c718c740d', '3505225218', 2),
(8, 'Juan Mateo', 'Rodríguez Flórez', 'juanmateopro77@gmail.com', '15e974ab9ea4359c679c2e1c596d1982', '3002419706', 1),
(10, 'Santiago', 'Garcia', 'asantiago@gmail.com', 'e99a18c428cb38d5f260853678922e03', '3108062455', 3),
(11, 'Laura', 'Martinez', 'laum@gmail.com', 'e99a18c428cb38d5f260853678922e03', '31245678954', 1),
(12, 'Angela', 'Forero', 'angelaf@gmail.com', 'e99a18c428cb38d5f260853678922e03', '3156789314', 2),
(13, 'Sebastian ', 'Rodriguez', 'sebas@gmail.com', 'e99a18c428cb38d5f260853678922e03', '3502363714', 2),
(15, 'cristian', 'parra', 'cris01@gmail.com', 'e99a18c428cb38d5f260853678922e03', '123456', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas`
--

CREATE TABLE `vacunas` (
  `idVacunas` int(11) NOT NULL,
  `Tipo_vacunas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vacunas`
--

INSERT INTO `vacunas` (`idVacunas`, `Tipo_vacunas`) VALUES
(101, 'Rabia'),
(102, 'Hepatitis'),
(103, 'Parvovirosis');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`idCita`),
  ADD KEY `Mascota_cita` (`Mascota_cita`);

--
-- Indices de la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD PRIMARY KEY (`idHistorial`),
  ADD KEY `fk_Historial Clinico_Vacunas1` (`Vacunas_idVacunas`),
  ADD KEY `fk_Historial Clinico_Mascota1` (`Mascota_idMascota`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`idMascota`),
  ADD KEY `Dueño_idDueño` (`Dueño_idDueño`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `fk_Usuario_Rol` (`Rol_idRol`);

--
-- Indices de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  ADD PRIMARY KEY (`idVacunas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `idMascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_3` FOREIGN KEY (`Mascota_cita`) REFERENCES `mascotas` (`idMascota`);

--
-- Filtros para la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD CONSTRAINT `fk_Historial Clinico_Vacunas1` FOREIGN KEY (`Vacunas_idVacunas`) REFERENCES `vacunas` (`idVacunas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `historial_clinico_ibfk_1` FOREIGN KEY (`Mascota_idMascota`) REFERENCES `mascotas` (`idMascota`);

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`Dueño_idDueño`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Rol` FOREIGN KEY (`Rol_idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
