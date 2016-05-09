-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2016 a las 23:03:16
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_spanish2_ci NOT NULL,
  `password` text COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(90) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(90) COLLATE utf8_spanish2_ci NOT NULL,
  `documento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estrato` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=124 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `apellido`, `documento`, `direccion`, `telefono`, `estrato`) VALUES
(1, 'Sebas19', 'www444333', 'Sebastian', 'Rincon', '1010217283', 'Calle 69 # 99 - 33', '3143232830', '3'),
(102, '2542354', 'wegfw', '', '', '', '', '', ''),
(103, '123', '123', '', '', '', '', '', ''),
(104, '111', '111', '', '', '', '', '', ''),
(105, 'regwer', '', '', '', '', '', '', ''),
(106, '333', '333', '', '', '', '', '', ''),
(107, 'www44', 'ere34', '', '', '', '', '', ''),
(108, '2342r', '235rr34', '', '', '', '', '', ''),
(109, '23rt3gvfgvd', 'fgsdgw', '', '', '', '', '', ''),
(110, 'rfq4514rf', '4r14t2g', '', '', '', '', '', ''),
(111, '435twger', 'wtgrwtg', '', '', '', '', '', ''),
(112, '34r2f', 'sdfq4', '', '', '', '', '', ''),
(113, '4r312', '234r2', '', '', '', '', '', ''),
(114, '25r', 'wrg', '', '', '', '', '', ''),
(115, '12r4fgfq', 'frerfqr', '', '', '', '', '', ''),
(116, '43r2f', 'wegr34', '', '', '', '', '', ''),
(117, 'fwegev', 'sdfvdfv', '', '', '', '', '', ''),
(118, 'fwes', 'dfvd', '', '', '', '', '', ''),
(119, '3fwe', '', '', '', '', '', '', ''),
(120, 'dddd', '', '', '', '', '', '', ''),
(121, 'gvsv', 'sdvd', '', '', '', '', '', ''),
(122, 'dsfv', '', '', '', '', '', '', ''),
(123, 'wev ', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
