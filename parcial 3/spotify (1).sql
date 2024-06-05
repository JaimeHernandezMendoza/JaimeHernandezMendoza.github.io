-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:58:10
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'The weekend', ''),
(2, 'Taylor Swift', ''),
(3, 'Ariana Grande', ''),
(4, 'justin Bieber', ''),
(5, 'Drake', ''),
(6, 'Valentin elizalde', ''),
(7, 'Gabito Ballesteros', ''),
(8, 'Natanael Cano', ''),
(9, 'Eminem', ''),
(10, 'Peso Pluma', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas y canciones`
--

CREATE TABLE `artistas y canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'espresso', 4, '00:02:55', '2024-04-12', 1, 'la artista sabrina en la portada'),
(2, 'havanna', 4, '00:03:37', '2017-08-03', 1, 'camila cabello en una silla '),
(3, 'back in black', 6, '00:04:14', '1980-07-25', 1, 'portada de la banda y sus iniciales ac dc'),
(4, 'lose yourself', 5, '00:05:20', '2002-10-28', 1, 'eminem en el autobus de la pelicula 8mile'),
(5, 'all that matters', 1, '00:03:41', '2013-12-13', 1, 'el artista justin y una chica bailando'),
(6, 'we belong together', 3, '00:01:58', '1959-02-03', 0, 'el cantante con su guitarra'),
(7, 'lunch', 4, '00:03:00', '2024-05-22', 1, 'ella con gorra y cadenas'),
(8, 'houdini', 4, '00:03:09', '2023-10-09', 0, ''),
(9, 'redrum', 5, '00:04:26', '2024-01-11', 1, 'el de niño'),
(10, 'not like us', 5, '00:04:33', '2024-05-04', 1, 'la casa de drake');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'R&B'),
(2, 'K-POP'),
(3, 'Rock and roll'),
(4, 'Pop'),
(5, 'Rap'),
(6, 'Metal\r\n'),
(7, 'Reggae'),
(8, 'Jazz\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(4, 'Individual', 129),
(5, 'Duo', 169),
(6, 'Familiar', 199),
(7, 'Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_can` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist canciones`
--

CREATE TABLE `playlist canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'jaime fernando hernández mendoza', 'jhm@gmail.com', 6),
(2, 'Larissa bejarano felix', 'larb7@gmail.com', 5),
(3, 'Marco aguiluz ibarra', 'marcoagui7@gmail.com', 6),
(4, 'Angel saul rojo lopez', 'angsaul@gmail.com', 4),
(5, 'jose angel perez lopez', 'josee7@gmail.com', 6),
(6, 'Fernando moreno madrigal', 'fermoreno@hotmail.com', 7),
(7, 'alonso mamahua aguerrebere', 'alonso67@hotmail.com', 7),
(8, 'Julio iglesias monzon', 'juli786@hotmail.com', 5),
(9, 'maria castro torres', 'mariacastorr@hotmail.com', 5),
(10, 'Raul garcia cuadras', 'raulgarcua@hotmail.com', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas y canciones`
--
ALTER TABLE `artistas y canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist canciones`
--
ALTER TABLE `playlist canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`,`cancion_id`,`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas y canciones`
--
ALTER TABLE `artistas y canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist canciones`
--
ALTER TABLE `playlist canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas y canciones`
--
ALTER TABLE `artistas y canciones`
  ADD CONSTRAINT `artistas y canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas y canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist canciones`
--
ALTER TABLE `playlist canciones`
  ADD CONSTRAINT `playlist canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
