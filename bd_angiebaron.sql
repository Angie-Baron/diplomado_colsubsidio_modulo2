-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2021 a las 02:31:53
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_angiebaron`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(0, 'Galleteria', 'Figuras de Superheroes'),
(1, 'bebidas frias', 'gaseosas, jugos, etc'),
(2, 'bebidas domicilios', 'bebiidas para llevar'),
(3, 'bebidas calientes', 'todo tipo de cafés, milo, chocolates, etc'),
(4, 'postres', 'flanes, arroz con leche, etc'),
(5, 'panaderia', 'galletas, panes etc'),
(6, 'cocina', 'desayunos, platos especiales, etc'),
(7, 'Pasteleria', 'Pastel, Torta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `id_registro` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cod_producto` varchar(15) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `observacion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `devoluciones`
--

INSERT INTO `devoluciones` (`id_registro`, `fecha`, `cod_producto`, `cantidad`, `id_empleado`, `observacion`) VALUES
(1, '2021-10-08', 'A21', 3, 23864565, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` float DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `fecha_ing` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `telefono`, `direccion`, `fecha_ing`) VALUES
(521234, 'SANDRA MILENA', 23456800, 'carrera 100 # 27-32', '2021-09-26'),
(1019650930, 'Esteban Gomez', 3002380000, 'Cra 30 # 54-47 apt 101 torre 3', '2021-04-04'),
(1073681840, 'Angie Barón', 3123080000, 'Cra 3 # 7-17', '2021-04-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id_registro` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cod_producto` varchar(15) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `observacion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id_registro`, `fecha`, `cod_producto`, `cantidad`, `id_empleado`, `observacion`) VALUES
(1, '2021-10-08', 'A44', 3, 1073685205, 'Ninguna'),
(2, '2021-10-08', 'A28', 100, 1073685205, 'Ninguna'),
(3, '2021-10-09', 'A37', 5, 23864565, 'otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` varchar(15) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_und` int(11) NOT NULL,
  `costo` double NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `producto`, `id_proveedor`, `id_categoria`, `id_und`, `costo`, `precio_venta`) VALUES
('A10', 'Aromatica Panela', 2, 3, 1, 1440, 1800),
('A100', 'Zaviloe Pequeño', 1, 1, 1, 2000, 2500),
('A11', 'Te En Agua', 2, 3, 1, 1680, 2100),
('A12', 'Te En Leche', 2, 3, 1, 1760, 2200),
('A13', 'Avena Natural', 2, 1, 1, 1920, 2400),
('A14', 'Masato De Arroz', 2, 1, 1, 1760, 2200),
('A15', 'Gaseosa 350', 1, 1, 1, 1600, 2000),
('A16', 'Gaseosa 250', 1, 1, 1, 1280, 1600),
('A17', 'Gaseosa Plastica 250', 1, 1, 1, 1280, 1600),
('A18', 'Gaseosa 600', 1, 1, 1, 2080, 2600),
('A19', 'Gaseosa 500', 1, 1, 1, 2320, 2900),
('A2', 'Pandebono', 2, 5, 1, 720, 900),
('A20', 'Malta Grande', 1, 1, 1, 1600, 2000),
('A21', 'Malta Pequeña', 1, 1, 1, 1280, 1600),
('A22', 'Malta Pequeña Llevar', 1, 1, 1, 1600, 2000),
('A26', 'Flexi 400', 1, 1, 1, 1600, 2000),
('A27', 'Vive100', 1, 1, 1, 1600, 2000),
('A28', 'Mr. Tee', 1, 1, 1, 1600, 2000),
('A29', 'Kumis O Yogurt', 4, 1, 1, 1760, 2200),
('A3', 'Promo X 7', 2, 5, 1, 685, 857),
('A30', 'Milo Caliente', 5, 3, 1, 1920, 2400),
('A31', 'Milo Frio', 5, 1, 1, 2560, 3200),
('A32', 'Agua En Botella', 1, 1, 1, 2000, 2500),
('A33', 'Jugo Natural Agua', 3, 1, 1, 2400, 3000),
('A34', 'Jugo Natural Leche', 3, 1, 1, 2800, 3500),
('A35', 'Empanada Frita', 2, 5, 1, 1280, 1600),
('A37', 'Tinto Grande', 2, 2, 1, 1440, 1800),
('A38', 'Avena Domi', 2, 2, 1, 2000, 2500),
('A39', 'Tinto Domi', 2, 2, 1, 960, 1200),
('A4', 'Buñuelo Mini', 2, 5, 1, 400, 500),
('A40', 'Café Peq. Domi', 2, 2, 1, 1120, 1400),
('A41', 'Café Leche Domi', 2, 2, 1, 1840, 2300),
('A42', 'Aromatica Senc. Domi', 2, 2, 1, 1600, 2000),
('A43', 'Aromatica Frut. Domi', 2, 2, 1, 1840, 2300),
('A44', 'Milo Domi.', 2, 2, 1, 2000, 2500),
('A45', 'Masato Domi.', 2, 2, 1, 1840, 2300),
('A46', 'Arroz Con Leche', 2, 4, 1, 1200, 1500),
('A47', 'Brevas', 2, 4, 1, 1360, 1700),
('A48', 'Jugo De Naranja', 2, 1, 1, 1600, 2000),
('A49', 'Hit Nectar Vidrio', 1, 1, 1, 1600, 2000),
('A5', 'Empanada Horneada', 2, 5, 1, 2000, 2500),
('A52', 'Combo 1', 2, 7, 1, 1600, 2000),
('A53', 'Combo 2', 2, 7, 1, 2000, 2500),
('A54', 'Combo 3', 2, 7, 1, 2400, 3000),
('A55', 'Combo 4', 2, 7, 1, 2800, 3500),
('A56', 'Vive 100 Mediano', 1, 1, 1, 2000, 2500),
('A57', 'Zaviloe Pequeño', 1, 1, 1, 2000, 2500),
('A58', 'Zaviloe Grande', 1, 1, 1, 2400, 3000),
('A59', 'Gaseosa 1.5', 1, 1, 1, 3200, 4000),
('A6', 'Tinto', 2, 3, 1, 880, 1100),
('A60', 'Speed ', 1, 1, 1, 1200, 1500),
('A61', 'Huevos Algusto', 2, 6, 1, 2400, 3000),
('A62', 'Huevos Con Arroz', 2, 6, 1, 3200, 4000),
('A64', 'Caldo De Costilla', 2, 6, 1, 3600, 4500),
('A65', 'DESAYUNO GRANDESITO', 2, 6, 1, 5600, 7000),
('A7', 'Café Pequeño', 2, 3, 1, 1040, 1300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Supervisor'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id_registro` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cod_producto` varchar(15) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `observacion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`id_registro`, `fecha`, `cod_producto`, `cantidad`, `id_empleado`, `observacion`) VALUES
(1, '2021-10-11', 'A31', 2, 1073685205, 'otro'),
(2, '2021-09-26', 'A30', 5, 1019650930, 'Ninguna'),
(4, '2021-10-08', 'A2', 7, 1073685205, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_proveedores`
--

CREATE TABLE `t_proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_proveedores`
--

INSERT INTO `t_proveedores` (`id_proveedor`, `razon_social`, `identificacion`, `direccion`, `telefono`) VALUES
(1, 'Deposito Calderon', '8189972', 'cra 3b este # 33-54 ', '000000'),
(2, 'Sol Café', '6937736', 'cra 14 # 94-49', '8888888'),
(3, 'Pulpas', '2558023', 'cll 45c # 22-59', '2222222'),
(4, 'Vitalac', '9991430', 'av 19 # 125-30', '3333333'),
(5, 'Nestlé', '5388357', 'av cra 50 # 91-38', '4444444');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre_completo` varchar(70) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`idusuarios`, `nombre_completo`, `correo`, `usuario`, `password`) VALUES
(10, 'Angie Barón', 'angie@gmail.com', 'angie_baron', 'angie_baron'),
(20, 'Jose santana', 'mijo@gmail.com', 'mijo', 'mijo123'),
(30, 'sandra giraldo', 'sandrix@hotmail.com', 'sandrix', 'sandrix123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `und_med`
--

CREATE TABLE `und_med` (
  `id_und` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `und_med`
--

INSERT INTO `und_med` (`id_und`, `nombre`, `descripcion`) VALUES
(0, 'Metro', 'Ninguna'),
(1, 'Unidad', NULL),
(2, 'Caja', 'Ninguna'),
(3, 'Pacas', 'Bolsa grande'),
(4, 'gramo', NULL),
(5, 'libra', NULL),
(6, 'kilo', NULL),
(7, 'litro', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_und` (`id_und`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- Indices de la tabla `t_proveedores`
--
ALTER TABLE `t_proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- Indices de la tabla `und_med`
--
ALTER TABLE `und_med`
  ADD PRIMARY KEY (`id_und`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD CONSTRAINT `devoluciones_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`codigo`);

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`codigo`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `t_proveedores` (`id_proveedor`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`id_und`) REFERENCES `und_med` (`id_und`);

--
-- Filtros para la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD CONSTRAINT `salidas_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
