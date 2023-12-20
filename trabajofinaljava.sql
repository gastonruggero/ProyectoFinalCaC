-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2023 a las 05:04:45
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
-- Base de datos: `trabajofinaljava`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idea`
--

CREATE TABLE `idea` (
  `id_idea` int(11) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripción` varchar(2000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `idea`
--

INSERT INTO `idea` (`id_idea`, `nombre`, `email`, `descripción`) VALUES
(6, 'Lucio Vivaldo', 'vivluc@yahoo.com', 'Superó los 30.000 votos y conducirá los destinos del club hasta 2027. A pesar de las complicaciones derivadas del temporal, una multitud asistió a las elecciones que consagraron a Juan Román Riquelme como presidente de Boca Juniors para el período 2023/2027'),
(7, 'Mirtha', 'mirtalegrand@yo.com', 'Para que un avión de papel vuele mucho, debes utilizar un papel que no sea demasiado grueso, hacer muy bien las dobleces, que las esquinas queden puntiagudas y no redondas, y regular el peso elaborando las dobleces por la mitad del papel.\r\n\r\nSi no sabes cómo hacer un avión de papel y te gustaría aprender, no te pierdas el siguiente paso a paso. ¡Es muy sencillo!'),
(8, 'Freddy Krueger', 'deterror@comics.com.ar', '“You need wheels / If you wanna make deals”, como decía aquella cancion. Para atacar, cargar, huir o merodear, el vehículo es tan crucial para el serial killer como el arma, el cebo o la oportunidad. Psycholand Automotor, concesionario predilecto de matarifes psicópatas, les ofrece una gama ilimitada de turismos, furgonetas, caravanas y (WTF) avionetas, desde el escarabajo beis de Bundy a la infame Murder Mac de Bittaker & Norris, pasando por el Oldsmobile enfangado de JW Gacy.'),
(9, 'Gastón Ruggero', 'gastonruggero@gmail.com', 'JavaScript (abreviado comúnmente JS) es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos,2​ basado en prototipos, imperativo, débilmente tipado y dinámico.\r\n\r\nSe utiliza principalmente del lado del cliente, implementado como parte de un navegador web permitiendo mejoras en la interfaz de usuario y páginas web dinámicas3​ y JavaScript del lado del servidor (Server-side JavaScript o SSJS). Su uso en aplicaciones externas a la web, por ejemplo en documentos PDF, aplicaciones de escritorio (mayoritariamente widgets) es también significativo.'),
(10, 'Carlos Ruggero', 'donruggeroblues@gmail.com', 'ECMAScript es una especificación de lenguaje de programación publicada por Ecma International. El desarrollo empezó en 1996 y estuvo basado en el popular lenguaje JavaScript propuesto como estándar por Netscape Communications Corporation. Actualmente está aceptado como el estándar ISO/IEC 22275:2018.'),
(11, 'Gustavo Lima', 'gustavo@lima.com', 'El microordenador Texas Instruments TI-99/4A salió a la venta en los Estados Unidos en junio de 1981. Fue muy popular en la década de los 80\r\n\r\nLa serie de microordenadores TI-99/4 a la que pertenecía la TI-99/4A fue la primera serie de ordenadores personales de 16 bits. En particular, la TI-99/4A tenía un microprocesador de 16 bits TMS9900 funcionando a 3,3 MHz. Sin embargo, varias decisiones en su diseño impactaron negativamente en el rendimiento de la máquina. En primer lugar, sólo disponía de 256 bytes de memoria RAM direccionable por la CPU, y los 16 kB restantes pertenecían al VDP (Visual Display Processor). En segundo lugar, todos los periféricos y la memoria estaban conectados a la CPU a través de un multiplexor 16-a-8, lo que requería de dos ciclos de reloj para cualquier acceso, introduciendo estados de espera (wait state) adicionales. El ordenador accedía a la mayoría de su hardware a través de un bus serie de un solo bit llamado en inglés Communications Register Unit (CRU - 9901).'),
(12, 'Fernando Martinez', 'fermar@hotmail.com', 'Commodore 64 (C64, CBM 64/CBM64, C=64,C-64, VIC-641​) es una computadora doméstica de 8 bits desarrollada por Commodore International en agosto de 1982 a un precio inicial de 595 dólares. Sucede a la Commodore VIC-20 y a la Commodore MAX Machine, con 64 kilobytes (65 536 bytes) de RAM, con gráficos y sonido muy por encima de otros equipos contemporáneos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(11) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` char(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cat` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `nombre`, `apellido`, `email`, `cantidad`, `cat`, `fecha`) VALUES
(66, 'Pepe', 'Biondi', 'pepito@gmail.com', '3', 'Trainee', '2023-12-19'),
(67, 'Tuilo', 'Rivarola', 'turi@turismo.gov.ar', '2', 'Sin Beneficio', '2023-12-19'),
(68, 'Lisandro', 'Rivas', 'lisi@yahoo.com', '6', 'Estudiante', '2023-12-19'),
(69, 'Viviana', 'Canosa', 'lavividelagente@canal9.com.ar', '6', 'Junior', '2023-12-19'),
(70, 'Gast�n', 'Ruggero', 'donruggeroblues@gmail.com', '6', 'Sin beneficio', '2023-12-19'),
(71, 'Gustavo', 'Lima', 'gustavo@lima.com', '8', 'Trainee', '2023-12-19'),
(72, 'Fernando', 'Mart�nez', 'fermar@hotmail.com', '9', 'Sin beneficio', '2023-12-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `pass` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `pass`) VALUES
(1, 'Tito', '1234'),
(2, 'Juan', 'perez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id_idea`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `idea`
--
ALTER TABLE `idea`
  MODIFY `id_idea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
