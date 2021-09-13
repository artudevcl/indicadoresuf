-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2021 a las 07:57:02
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sursteam_ci_ajax_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_uf`
--

CREATE TABLE `tbl_uf` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `unidadmedida` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL,
  `valor` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_uf`
--

INSERT INTO `tbl_uf` (`id`, `codigo`, `nombre`, `unidadmedida`, `fecha`, `valor`, `created_at`, `updated_at`) VALUES
(1, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-09 03:00:00', 30004.4, NULL, NULL),
(2, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-08 03:00:00', 29996.7, NULL, NULL),
(3, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-07 03:00:00', 29989, NULL, NULL),
(4, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-06 03:00:00', 29981.3, NULL, NULL),
(5, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-05 04:00:00', 29973.6, NULL, NULL),
(6, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-04 04:00:00', 29965.9, NULL, NULL),
(7, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-03 04:00:00', 29958.2, NULL, NULL),
(8, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-02 04:00:00', 29950.5, NULL, NULL),
(9, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-09-01 04:00:00', 29942.8, NULL, NULL),
(10, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-31 04:00:00', 29935.1, NULL, NULL),
(11, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-30 04:00:00', 29927.4, NULL, NULL),
(12, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-29 04:00:00', 29919.7, NULL, NULL),
(13, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-28 04:00:00', 29912, NULL, NULL),
(14, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-27 04:00:00', 29904.3, NULL, NULL),
(15, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-26 04:00:00', 29896.6, NULL, NULL),
(16, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-25 04:00:00', 29888.9, NULL, NULL),
(17, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-24 04:00:00', 29881.3, NULL, NULL),
(18, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-23 04:00:00', 29873.6, NULL, NULL),
(19, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-22 04:00:00', 29865.9, NULL, NULL),
(20, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-21 04:00:00', 29858.2, NULL, NULL),
(21, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-20 04:00:00', 29850.6, NULL, NULL),
(22, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-19 04:00:00', 29842.9, NULL, NULL),
(23, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-18 04:00:00', 29835.2, NULL, NULL),
(24, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-17 04:00:00', 29827.6, NULL, NULL),
(25, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-16 04:00:00', 29819.9, NULL, NULL),
(26, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-15 04:00:00', 29812.2, NULL, NULL),
(27, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-14 04:00:00', 29804.6, NULL, NULL),
(28, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-13 04:00:00', 29796.9, NULL, NULL),
(29, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-12 04:00:00', 29789.2, NULL, NULL),
(30, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-11 04:00:00', 29781.6, NULL, NULL),
(31, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-10 04:00:00', 29773.9, NULL, NULL),
(32, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-09 04:00:00', 29766.3, NULL, NULL),
(33, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-08 04:00:00', 29765.3, NULL, NULL),
(34, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-07 04:00:00', 29764.4, NULL, NULL),
(35, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-06 04:00:00', 29763.4, NULL, NULL),
(36, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-05 04:00:00', 29762.4, NULL, NULL),
(37, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-04 04:00:00', 29761.5, NULL, NULL),
(38, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-03 04:00:00', 29760.5, NULL, NULL),
(39, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-02 04:00:00', 29759.6, NULL, NULL),
(40, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-08-01 04:00:00', 29758.6, NULL, NULL),
(41, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-31 04:00:00', 29757.6, NULL, NULL),
(42, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-30 04:00:00', 29756.7, NULL, NULL),
(43, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-29 04:00:00', 29755.7, NULL, NULL),
(44, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-28 04:00:00', 29754.8, NULL, NULL),
(45, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-27 04:00:00', 29753.8, NULL, NULL),
(46, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-26 04:00:00', 29752.8, NULL, NULL),
(47, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-25 04:00:00', 29751.9, NULL, NULL),
(48, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-24 04:00:00', 29750.9, NULL, NULL),
(49, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-23 04:00:00', 29750, NULL, NULL),
(50, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-22 04:00:00', 29749, NULL, NULL),
(51, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-21 04:00:00', 29748.1, NULL, NULL),
(52, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-20 04:00:00', 29747.1, NULL, NULL),
(53, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-19 04:00:00', 29746.1, NULL, NULL),
(54, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-18 04:00:00', 29745.2, NULL, NULL),
(55, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-17 04:00:00', 29744.2, NULL, NULL),
(56, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-16 04:00:00', 29743.2, NULL, NULL),
(57, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-15 04:00:00', 29742.3, NULL, NULL),
(58, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-14 04:00:00', 29741.3, NULL, NULL),
(59, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-13 04:00:00', 29740.4, NULL, NULL),
(60, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-12 04:00:00', 29739.4, NULL, NULL),
(61, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-11 04:00:00', 29738.5, NULL, NULL),
(62, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-10 04:00:00', 29737.5, NULL, NULL),
(63, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-09 04:00:00', 29736.5, NULL, NULL),
(64, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-08 04:00:00', 29733.6, NULL, NULL),
(65, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-07 04:00:00', 29730.6, NULL, NULL),
(66, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-06 04:00:00', 29727.6, NULL, NULL),
(67, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-05 04:00:00', 29724.7, NULL, NULL),
(68, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-04 04:00:00', 29721.7, NULL, NULL),
(69, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-03 04:00:00', 29718.7, NULL, NULL),
(70, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-02 04:00:00', 29715.8, NULL, NULL),
(71, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-07-01 04:00:00', 29712.8, NULL, NULL),
(72, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-30 04:00:00', 29709.8, NULL, NULL),
(73, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-29 04:00:00', 29706.9, NULL, NULL),
(74, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-28 04:00:00', 29703.9, NULL, NULL),
(75, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-27 04:00:00', 29700.9, NULL, NULL),
(76, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-26 04:00:00', 29698, NULL, NULL),
(77, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-25 04:00:00', 29695, NULL, NULL),
(78, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-24 04:00:00', 29692, NULL, NULL),
(79, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-23 04:00:00', 29689.1, NULL, NULL),
(80, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-22 04:00:00', 29686.1, NULL, NULL),
(81, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-21 04:00:00', 29683.2, NULL, NULL),
(82, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-20 04:00:00', 29680.2, NULL, NULL),
(83, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-19 04:00:00', 29677.2, NULL, NULL),
(84, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-18 04:00:00', 29674.2, NULL, NULL),
(85, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-17 04:00:00', 29671.3, NULL, NULL),
(86, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-16 04:00:00', 29668.3, NULL, NULL),
(87, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-15 04:00:00', 29665.4, NULL, NULL),
(88, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-14 04:00:00', 29662.4, NULL, NULL),
(89, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-13 04:00:00', 29659.4, NULL, NULL),
(90, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-12 04:00:00', 29656.5, NULL, NULL),
(91, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-11 04:00:00', 29653.5, NULL, NULL),
(92, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-10 04:00:00', 29650.6, NULL, NULL),
(93, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-09 04:00:00', 29647.6, NULL, NULL),
(94, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-08 04:00:00', 29643.8, NULL, NULL),
(95, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-07 04:00:00', 29640, NULL, NULL),
(96, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-06 04:00:00', 29636.2, NULL, NULL),
(97, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-05 04:00:00', 29632.3, NULL, NULL),
(98, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-04 04:00:00', 29628.5, NULL, NULL),
(99, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-03 04:00:00', 29624.7, NULL, NULL),
(100, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-02 04:00:00', 29620.9, NULL, NULL),
(101, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-06-01 04:00:00', 29617.1, NULL, NULL),
(102, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-31 04:00:00', 29613.3, NULL, NULL),
(103, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-30 04:00:00', 29609.4, NULL, NULL),
(104, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-29 04:00:00', 29605.6, NULL, NULL),
(105, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-28 04:00:00', 29601.8, NULL, NULL),
(106, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-27 04:00:00', 29598, NULL, NULL),
(107, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-26 04:00:00', 29594.2, NULL, NULL),
(108, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-25 04:00:00', 29590.4, NULL, NULL),
(109, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-24 04:00:00', 29586.6, NULL, NULL),
(110, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-23 04:00:00', 29582.8, NULL, NULL),
(111, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-22 04:00:00', 29579, NULL, NULL),
(112, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-21 04:00:00', 29575.2, NULL, NULL),
(113, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-20 04:00:00', 29571.3, NULL, NULL),
(114, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-19 04:00:00', 29567.5, NULL, NULL),
(115, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-18 04:00:00', 29563.7, NULL, NULL),
(116, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-17 04:00:00', 29559.9, NULL, NULL),
(117, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-16 04:00:00', 29556.1, NULL, NULL),
(118, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-15 04:00:00', 29552.3, NULL, NULL),
(119, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-14 04:00:00', 29548.5, NULL, NULL),
(120, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-13 04:00:00', 29544.7, NULL, NULL),
(121, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-12 04:00:00', 29540.9, NULL, NULL),
(122, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-11 04:00:00', 29537.1, NULL, NULL),
(123, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-10 04:00:00', 29533.3, NULL, NULL),
(124, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-09 04:00:00', 29529.5, NULL, NULL),
(125, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-08 04:00:00', 29525.6, NULL, NULL),
(126, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-07 04:00:00', 29521.6, NULL, NULL),
(127, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-06 04:00:00', 29517.7, NULL, NULL),
(128, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-05 04:00:00', 29513.8, NULL, NULL),
(129, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-04 04:00:00', 29509.8, NULL, NULL),
(130, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-03 04:00:00', 29505.9, NULL, NULL),
(131, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-02 04:00:00', 29502, NULL, NULL),
(132, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-05-01 04:00:00', 29498.1, NULL, NULL),
(133, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-30 04:00:00', 29494.1, NULL, NULL),
(134, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-29 04:00:00', 29490.2, NULL, NULL),
(135, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-28 04:00:00', 29486.3, NULL, NULL),
(136, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-27 04:00:00', 29482.4, NULL, NULL),
(137, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-26 04:00:00', 29478.4, NULL, NULL),
(138, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-25 04:00:00', 29474.5, NULL, NULL),
(139, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-24 04:00:00', 29470.6, NULL, NULL),
(140, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-23 04:00:00', 29466.7, NULL, NULL),
(141, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-22 04:00:00', 29462.8, NULL, NULL),
(142, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-21 04:00:00', 29458.8, NULL, NULL),
(143, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-20 04:00:00', 29454.9, NULL, NULL),
(144, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-19 04:00:00', 29451, NULL, NULL),
(145, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-18 04:00:00', 29447.1, NULL, NULL),
(146, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-17 04:00:00', 29443.2, NULL, NULL),
(147, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-16 04:00:00', 29439.2, NULL, NULL),
(148, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-15 04:00:00', 29435.3, NULL, NULL),
(149, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-14 04:00:00', 29431.4, NULL, NULL),
(150, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-13 04:00:00', 29427.5, NULL, NULL),
(151, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-12 04:00:00', 29423.6, NULL, NULL),
(152, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-11 04:00:00', 29419.7, NULL, NULL),
(153, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-10 04:00:00', 29415.7, NULL, NULL),
(154, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-09 04:00:00', 29411.8, NULL, NULL),
(155, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-08 04:00:00', 29409.9, NULL, NULL),
(156, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-07 04:00:00', 29408, NULL, NULL),
(157, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-06 04:00:00', 29406.1, NULL, NULL),
(158, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-05 04:00:00', 29404.2, NULL, NULL),
(159, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-04 04:00:00', 29402.3, NULL, NULL),
(160, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-03 03:00:00', 29400.4, NULL, NULL),
(161, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-02 03:00:00', 29398.6, NULL, NULL),
(162, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-04-01 03:00:00', 29396.7, NULL, NULL),
(163, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-31 03:00:00', 29394.8, NULL, NULL),
(164, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-30 03:00:00', 29392.9, NULL, NULL),
(165, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-29 03:00:00', 29391, NULL, NULL),
(166, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-28 03:00:00', 29389.1, NULL, NULL),
(167, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-27 03:00:00', 29387.2, NULL, NULL),
(168, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-26 03:00:00', 29385.3, NULL, NULL),
(169, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-25 03:00:00', 29383.4, NULL, NULL),
(170, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-24 03:00:00', 29381.5, NULL, NULL),
(171, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-23 03:00:00', 29379.6, NULL, NULL),
(172, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-22 03:00:00', 29377.7, NULL, NULL),
(173, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-21 03:00:00', 29375.8, NULL, NULL),
(174, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-20 03:00:00', 29373.9, NULL, NULL),
(175, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-19 03:00:00', 29372, NULL, NULL),
(176, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-18 03:00:00', 29370.2, NULL, NULL),
(177, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-17 03:00:00', 29368.3, NULL, NULL),
(178, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-16 03:00:00', 29366.4, NULL, NULL),
(179, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-15 03:00:00', 29364.5, NULL, NULL),
(180, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-14 03:00:00', 29362.6, NULL, NULL),
(181, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-13 03:00:00', 29360.7, NULL, NULL),
(182, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-12 03:00:00', 29358.8, NULL, NULL),
(183, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-11 03:00:00', 29356.9, NULL, NULL),
(184, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-10 03:00:00', 29355, NULL, NULL),
(185, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-09 03:00:00', 29353.1, NULL, NULL),
(186, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-08 03:00:00', 29345.8, NULL, NULL),
(187, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-07 03:00:00', 29338.5, NULL, NULL),
(188, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-06 03:00:00', 29331.2, NULL, NULL),
(189, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-05 03:00:00', 29323.9, NULL, NULL),
(190, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-04 03:00:00', 29316.6, NULL, NULL),
(191, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-03 03:00:00', 29309.3, NULL, NULL),
(192, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-02 03:00:00', 29302, NULL, NULL),
(193, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-03-01 03:00:00', 29294.7, NULL, NULL),
(194, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-28 03:00:00', 29287.4, NULL, NULL),
(195, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-27 03:00:00', 29280.1, NULL, NULL),
(196, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-26 03:00:00', 29272.8, NULL, NULL),
(197, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-25 03:00:00', 29265.5, NULL, NULL),
(198, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-24 03:00:00', 29258.2, NULL, NULL),
(199, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-23 03:00:00', 29250.9, NULL, NULL),
(200, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-22 03:00:00', 29243.6, NULL, NULL),
(201, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-21 03:00:00', 29236.3, NULL, NULL),
(202, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-20 03:00:00', 29229.1, NULL, NULL),
(203, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-19 03:00:00', 29221.8, NULL, NULL),
(204, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-18 03:00:00', 29214.5, NULL, NULL),
(205, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-17 03:00:00', 29207.2, NULL, NULL),
(206, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-16 03:00:00', 29200, NULL, NULL),
(207, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-15 03:00:00', 29192.7, NULL, NULL),
(208, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-14 03:00:00', 29185.4, NULL, NULL),
(209, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-13 03:00:00', 29178.1, NULL, NULL),
(210, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-12 03:00:00', 29170.9, NULL, NULL),
(211, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-11 03:00:00', 29163.6, NULL, NULL),
(212, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-10 03:00:00', 29156.3, NULL, NULL),
(213, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-09 03:00:00', 29149.1, NULL, NULL),
(214, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-08 03:00:00', 29146.3, NULL, NULL),
(215, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-07 03:00:00', 29143.4, NULL, NULL),
(216, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-06 03:00:00', 29140.6, NULL, NULL),
(217, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-05 03:00:00', 29137.8, NULL, NULL),
(218, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-04 03:00:00', 29135, NULL, NULL),
(219, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-03 03:00:00', 29132.2, NULL, NULL),
(220, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-02 03:00:00', 29129.4, NULL, NULL),
(221, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-02-01 03:00:00', 29126.6, NULL, NULL),
(222, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-31 03:00:00', 29123.7, NULL, NULL),
(223, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-30 03:00:00', 29120.9, NULL, NULL),
(224, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-29 03:00:00', 29118.1, NULL, NULL),
(225, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-28 03:00:00', 29115.3, NULL, NULL),
(226, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-27 03:00:00', 29112.5, NULL, NULL),
(227, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-26 03:00:00', 29109.7, NULL, NULL),
(228, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-25 03:00:00', 29106.9, NULL, NULL),
(229, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-24 03:00:00', 29104, NULL, NULL),
(230, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-23 03:00:00', 29101.2, NULL, NULL),
(231, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-22 03:00:00', 29098.4, NULL, NULL),
(232, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-21 03:00:00', 29095.6, NULL, NULL),
(233, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-20 03:00:00', 29092.8, NULL, NULL),
(234, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-19 03:00:00', 29090, NULL, NULL),
(235, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-18 03:00:00', 29087.2, NULL, NULL),
(236, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-17 03:00:00', 29084.4, NULL, NULL),
(237, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-16 03:00:00', 29081.6, NULL, NULL),
(238, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-15 03:00:00', 29078.7, NULL, NULL),
(239, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-14 03:00:00', 29075.9, NULL, NULL),
(240, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-13 03:00:00', 29073.1, NULL, NULL),
(241, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-12 03:00:00', 29070.3, NULL, NULL),
(242, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-11 03:00:00', 29067.5, NULL, NULL),
(243, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-10 03:00:00', 29064.7, NULL, NULL),
(244, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-09 03:00:00', 29061.9, NULL, NULL),
(245, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-08 03:00:00', 29062.8, NULL, NULL),
(246, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-07 03:00:00', 29063.8, NULL, NULL),
(247, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-06 03:00:00', 29064.7, NULL, NULL),
(248, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-05 03:00:00', 29065.6, NULL, NULL),
(249, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-04 03:00:00', 29066.6, NULL, NULL),
(250, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-03 03:00:00', 29067.5, NULL, NULL),
(251, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-02 03:00:00', 29068.5, NULL, NULL),
(252, 'uf', 'Unidad de fomento (UF)', 'Pesos', '2021-01-01 03:00:00', 29069.4, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_uf`
--
ALTER TABLE `tbl_uf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_uf`
--
ALTER TABLE `tbl_uf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
