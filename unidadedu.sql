-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2022 a las 15:59:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unidadedu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre_curso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre_curso`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO'),
(6, 'SEXTO'),
(7, 'SEPTIMO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(10) NOT NULL,
  `tipo_recaudacion` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `cedula` varchar(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `agencia` varchar(10) NOT NULL,
  `cajero` varchar(15) NOT NULL,
  `fecha_hora` varchar(30) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `mensaje` varchar(20) NOT NULL,
  `cod_factura` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `tipo_recaudacion`, `nombre`, `cedula`, `descripcion`, `agencia`, `cajero`, `fecha_hora`, `valor`, `total`, `mensaje`, `cod_factura`) VALUES
(41, 'Pago', 'Hans Rodriguez', '0954025581', 'Matricula de Mayo', 'Matriz', 'cesar', '03/09/2022', '125.00', '125.00', '<Transaccion OK>', '001-111'),
(42, 'Pago', 'carmen rosales', '123456', 'Matricula de Mayo', 'Matriz', 'cesar', '03/09/2022', '125.00', '125.00', '<Transaccion OK>', '001-111'),
(43, 'Pago', 'Hans Rodriguez', '0954025581', 'Pension de Junio', 'Matriz', 'cesar', '03/09/2022', '150.00', '150.00', '<Transaccion OK>', '001-111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lectivo`
--

CREATE TABLE `lectivo` (
  `id` int(11) NOT NULL,
  `aniolectivo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lectivo`
--

INSERT INTO `lectivo` (`id`, `aniolectivo`) VALUES
(1, '2000-2001'),
(2, '2001-2002'),
(3, '2002-2003'),
(4, '2003-2004'),
(5, '2004-2005'),
(6, '2005-2006'),
(7, '2007-2008'),
(8, '2008-2009'),
(9, '2009-2010'),
(10, '2010-2011'),
(11, '2011-2012'),
(12, '2012-2013'),
(13, '2013-2014'),
(14, '2014-2015'),
(15, '2015-2016'),
(16, '2016-2017'),
(17, '2017-2018'),
(18, '2018-2019'),
(19, '2019-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(55) NOT NULL,
  `ci` varchar(15) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `curso` varchar(25) NOT NULL,
  `lectivo` varchar(25) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre`, `apellido`, `ci`, `genero`, `curso`, `lectivo`, `telefono`, `direccion`) VALUES
(24, 'Victor', 'Morales', '0874545454', 'Hombre', 'TERCERO', '2001-2002', 968465468, 'Barcelona'),
(25, 'Hans', 'Rodriguez', '0954025581', 'Hombre', 'PRIMERO', '2000-2001', 998443001, 'En el monte'),
(28, 'nelson', 'mora', '0912345', 'Hombre', 'PRIMERO', '2000-2001', 54654, 'sauces'),
(29, 'carmen', 'rosales', '123456', 'Mujer', 'TERCERO', '2005-2006', 12456, 'norte alborada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro`
--

CREATE TABLE `rubro` (
  `id` int(25) NOT NULL,
  `id_alumno` varchar(11) NOT NULL,
  `concepto` varchar(25) NOT NULL,
  `mes` varchar(25) NOT NULL,
  `anio` varchar(5) NOT NULL,
  `valor` decimal(25,2) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `metodo_pago` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rubro`
--

INSERT INTO `rubro` (`id`, `id_alumno`, `concepto`, `mes`, `anio`, `valor`, `estado`, `metodo_pago`) VALUES
(16, '0874545454', 'Matricula', 'Mayo', '2022', '125.00', 'Pendiente', 'nulo'),
(17, '0874545454', 'Pension', 'Junio', '2022', '150.00', 'Pendiente', 'nulo'),
(18, '0874545454', 'Pension', 'Julio', '2022', '150.00', 'Pendiente', 'nulo'),
(19, '0874545454', 'Pension', 'Agosto', '2022', '150.00', 'Pendiente', 'nulo'),
(20, '0874545454', 'Pension', 'Septiembre', '2022', '150.00', 'Pendiente', 'nulo'),
(21, '0874545454', 'Pension', 'Octubre', '2022', '150.00', 'Pendiente', 'nulo'),
(22, '0874545454', 'Pension', 'Noviembre', '2022', '150.00', 'Pendiente', 'nulo'),
(23, '0874545454', 'Pension', 'Diciembre', '2022', '150.00', 'Pendiente', 'nulo'),
(24, '0874545454', 'Pension', 'Enero', '2022', '150.00', 'Pendiente', 'nulo'),
(25, '0874545454', 'Pension', 'Febrero', '2022', '150.00', 'Pendiente', 'nulo'),
(26, '0954025581', 'Matricula', 'Mayo', '2022', '125.00', 'Pagado', 'Efectivo'),
(27, '0954025581', 'Pension', 'Junio', '2022', '150.00', 'Pagado', 'Efectivo'),
(28, '0954025581', 'Pension', 'Julio', '2022', '150.00', 'Pendiente', 'nulo'),
(29, '0954025581', 'Pension', 'Agosto', '2022', '150.00', 'Pendiente', 'nulo'),
(30, '0954025581', 'Pension', 'Septiembre', '2022', '150.00', 'Pendiente', 'nulo'),
(31, '0954025581', 'Pension', 'Octubre', '2022', '150.00', 'Pendiente', 'nulo'),
(32, '0954025581', 'Pension', 'Noviembre', '2022', '150.00', 'Pendiente', 'nulo'),
(33, '0954025581', 'Pension', 'Diciembre', '2022', '150.00', 'Pendiente', 'nulo'),
(34, '0954025581', 'Pension', 'Enero', '2022', '150.00', 'Pendiente', 'nulo'),
(35, '0954025581', 'Pension', 'Febrero', '2022', '150.00', 'Pendiente', 'nulo'),
(56, '0912345', 'Matricula', 'Mayo', '2022', '125.00', 'Pendiente', 'nulo'),
(57, '0912345', 'Pension', 'Junio', '2022', '150.00', 'Pendiente', 'nulo'),
(58, '0912345', 'Pension', 'Julio', '2022', '150.00', 'Pendiente', 'nulo'),
(59, '0912345', 'Pension', 'Agosto', '2022', '150.00', 'Pendiente', 'nulo'),
(60, '0912345', 'Pension', 'Septiembre', '2022', '150.00', 'Pendiente', 'nulo'),
(61, '0912345', 'Pension', 'Octubre', '2022', '150.00', 'Pendiente', 'nulo'),
(62, '0912345', 'Pension', 'Noviembre', '2022', '150.00', 'Pendiente', 'nulo'),
(63, '0912345', 'Pension', 'Diciembre', '2022', '150.00', 'Pendiente', 'nulo'),
(64, '0912345', 'Pension', 'Enero', '2022', '150.00', 'Pendiente', 'nulo'),
(65, '0912345', 'Pension', 'Febrero', '2022', '150.00', 'Pendiente', 'nulo'),
(66, '123456', 'Matricula', 'Mayo', '2022', '125.00', 'Pagado', 'Tarjeta'),
(67, '123456', 'Pension', 'Junio', '2022', '150.00', 'Pendiente', 'nulo'),
(68, '123456', 'Pension', 'Julio', '2022', '150.00', 'Pendiente', 'nulo'),
(69, '123456', 'Pension', 'Agosto', '2022', '150.00', 'Pendiente', 'nulo'),
(70, '123456', 'Pension', 'Septiembre', '2022', '150.00', 'Pendiente', 'nulo'),
(71, '123456', 'Pension', 'Octubre', '2022', '150.00', 'Pendiente', 'nulo'),
(72, '123456', 'Pension', 'Noviembre', '2022', '150.00', 'Pendiente', 'nulo'),
(73, '123456', 'Pension', 'Diciembre', '2022', '150.00', 'Pendiente', 'nulo'),
(74, '123456', 'Pension', 'Enero', '2022', '150.00', 'Pendiente', 'nulo'),
(75, '123456', 'Pension', 'Febrero', '2022', '150.00', 'Pendiente', 'nulo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `utipo`) VALUES
(1, 'hans', 'salesiana', 'Admin'),
(3, 'darwin', 'salesiana', 'Cajero'),
(5, 'cesar', 'salesiana', 'Secretaria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lectivo`
--
ALTER TABLE `lectivo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubro`
--
ALTER TABLE `rubro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `lectivo`
--
ALTER TABLE `lectivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `rubro`
--
ALTER TABLE `rubro`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
