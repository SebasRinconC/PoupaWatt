-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2016 a las 23:03:04
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `preferences`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programa` varchar(90) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `electrodomesticos` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `horainicio` time(6) NOT NULL,
  `horafinal` time(6) NOT NULL,
  `reduccion` int(10) NOT NULL,
  `valor` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `preferences`
--

INSERT INTO `preferences` (`id`, `programa`, `electrodomesticos`, `horainicio`, `horafinal`, `reduccion`, `valor`) VALUES
(1, 'Oferta a la demanda', 'TV', '18:00:00.000000', '20:00:00.000000', 1, 20),
(51, '2356', '23t4f', '01:19:00.000000', '02:13:00.000000', 0, 0),
(52, '523', 'sfb', '03:06:00.000000', '00:16:00.000000', 0, 0),
(53, 'r43', 'fsdv', '01:53:00.000000', '19:43:00.000000', 0, 0),
(54, '333', '333', '00:00:00.000000', '01:50:00.000000', 333, 333),
(55, 'ee33', 'e33', '00:00:00.000000', '08:50:00.000000', 33, 33),
(56, 'ddaadaa', 'daadaa', '22:01:00.000000', '23:01:00.000000', 0, 0),
(57, 'ferra', 'rerra', '08:01:00.000000', '03:07:00.000000', 32, 322);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
