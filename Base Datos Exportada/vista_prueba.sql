-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 28-04-2023 a las 19:03:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vista_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_formulario`
--

CREATE TABLE `datos_formulario` (
  `numero_documento` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion_residencia` varchar(30) NOT NULL,
  `estrato` int(2) NOT NULL,
  `contrasena` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_formulario`
--

INSERT INTO `datos_formulario` (`numero_documento`, `nombre`, `correo`, `direccion_residencia`, `estrato`, `contrasena`) VALUES
('0987654321', 'María García', 'mariagarcia@mail.com', 'Calle 2 # 2-2, Barrio San José', 2, 'clave456'),
('1234567890', 'Juan Pérez', 'juanperez@mail.com', 'Carrera 1 # 1-1, Barrio Bella ', 3, 'contraseña123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_formulario`
--
ALTER TABLE `datos_formulario`
  ADD PRIMARY KEY (`numero_documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
