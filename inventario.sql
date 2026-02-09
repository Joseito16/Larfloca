-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2026 a las 22:38:39
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id` int(100) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `costo` varchar(10) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `precio_unitario` varchar(100) NOT NULL,
  `precio_bs` decimal(60,0) NOT NULL,
  `proveedor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id`, `nombre`, `costo`, `cantidad`, `ubicacion`, `precio_unitario`, `precio_bs`, `proveedor`) VALUES
(1, 'Sello V5', '2.25', '0.00', 'Exibicion', '5', '0', 'Luso Cars'),
(2, 'Valvula Expansion Super Duty', '10.81', '0.00', '4GB1', '20', '0', 'Luso Cars'),
(5, 'Empacadura V5', '2.34', '19.00', 'Exibicion', '6', '0', 'Luso Cars'),
(6, 'Empacadura FX15', '1.58', '15.00', 'Exibicion', '6', '0', 'Luso Cars'),
(7, ' Gas R134a', '180', '5.80', 'Exibicion', '20', '0', 'Frio K29'),
(9, 'Aceite Emkaroil Pag 150', '5.25', '20.00', 'Mostrador', '8', '0', 'C. Hernandez'),
(11, 'Ferruler 13/32', '0.24', '50.00', '5H1/ Est 10-C', '1', '0', 'Luso Cars'),
(12, 'Ferruler 1/2', '0.20', '48.00', '5I1', '1', '0', 'Luso Cars'),
(13, 'Ferruler 5/16', '0.22', '50.00', '5G1/ Est 10-C', '1', '0', 'Luso Cars'),
(14, 'Manguera 1/2', '5.6', '35.00', 'Almacen', '10', '0', 'Luso Cars'),
(15, 'Manguera 13/32', '5.3', '24.00', 'Almacen', '10', '0', 'Luso Cars'),
(16, 'Manguera 5/16', '4.91', '8.00', 'Almacen', '10', '0', 'Luso Cars'),
(17, 'Fitting Union 13/32', '0.49', '28.00', '1F1', '2', '0', 'Luso Cars'),
(18, 'Fitting Union 1/2', '0.52', '25.00', '1G1', '2', '0', 'Luso Cars'),
(19, 'Fitting Union 5/16', '0.45', '32.00', '1E1', '2', '0', 'Luso Cars'),
(20, 'Evaporador Para Adaptar', '15', '9.00', 'Est 19', '30', '0', 'Carfloca'),
(21, 'Evaporador Fiat Tempra R12', '15', '1.00', 'Est 18-A', '30', '0', 'Carfloca'),
(22, 'Evaporador Hyundai H1 07-15', '42.12', '1.00', 'Est 18-B', '65', '0', 'Luso Cars'),
(23, 'Evaporador Hyundai Tucson/ Kia Sportage 13-18 (Ruizar)', '38', '1.00', 'Est 18-B', '60', '0', 'Ruizar'),
(24, 'Evaporador Hyundai Tucson/ Kia Sportage 16-18 (Luso)', '38.22', '2.00', 'Est 18-B', '60', '0', 'Luso Cars'),
(25, 'Evaporador Hyundai Tucson Fino 05-08', '32.88', '1.00', 'Est 18-C', '50', '0', 'Luso Cars'),
(26, 'Evaporador Hyundai Tucson Grueso (Luso)', '38.58', '2.00', 'Est 18-C', '60', '0', 'Luso Cars'),
(27, 'Evaporador Hyundai Tucson Grueso (Ruizar)', '38.58', '1.00', 'Est 18-D', '60', '0', 'Ruizar'),
(28, 'Evaporador Elantra Fino 04-06', '38', '2.00', 'Est 18-D', '60', '0', 'Ruizar'),
(29, 'Evaporador Hyundai Accent 12-18', '38', '1.00', 'Est 18-E', '60', '0', 'Ruizar'),
(30, 'Evaporador Neon 95-04', '40', '0.00', 'Est 17-B', '60', '0', 'Luso Cars'),
(31, 'Evaporador Neon 05-06', '30.25', '1.00', 'Est 17-B', '50', '0', 'Luso Cars'),
(32, 'Evaporador Hyundai HD65 12-16', '39', '1.00', 'Est 18-E', '60', '0', 'Luso Cars'),
(33, 'Evaporador Grand Cherokee KK 11-16 (locha)', '38.70', '1.00', 'Est 17-B', '60', '0', 'Luso Cars'),
(34, 'Evaporador Grand Cherokee KK 11-16 (Oring) (Luso)', '39.79', '1.00', 'Est 17-B', '60', '0', 'Luso Cars'),
(35, 'Evaporado Grand Cherokee KK 11-16 (Oring) (Ruizar)', '39', '2.00', 'Est 17-B', '60', '0', 'Ruizar'),
(36, 'Evaporador Dodge Ram/ Pick Up 11-18', '38.48', '1.00', 'Est 17-B', '60', '0', 'Luso Cars'),
(37, 'Evaporador Jeep Compas/Carilber 10-12', '39.12', '1.00', 'Est 17-C', '60', '0', 'Luso Cars'),
(38, 'Evaporador Jeep Compas/Caliber/Sebrin 07-09', '39.12', '1.00', 'Est 17-C', '60', '0', 'Luso Cars'),
(39, 'Evaporador Grand Cherokee 05-10 (Tubo Lago)', '36.64', '1.00', 'Est 17-C', '60', '0', 'Luso Cars'),
(40, 'Evaporador Ford Spedicion 06-08', '20', '3.00', 'Est 16-B', '40', '0', 'Carfloca'),
(41, 'Evaporador Ford Fiesta Max', '22.5', '2.00', 'Est 16-B', '45', '0', 'Carfloca'),
(42, 'Evaporador Ford Conquistador', '28', '2.00', 'Est 16-B', '50', '0', 'Airca'),
(43, 'Evaporador Renault Clio/Simbol 02-04', '35.60', '1.00', 'Est 16-C', '55', '0', 'Luso Cars'),
(44, 'Evaporador Renault Clio/Simbol/Kango 06-08', '36.45', '1.00', 'Est 16-C', '55', '0', 'Luso Cars'),
(45, 'Evaporador Kia Rio 01-05', '36.86', '1.00', 'Est 16-C', '60', '0', 'Luso Cars'),
(46, 'Evaporador Renault Twingo 97-05', '36.72', '2.00', 'Est 16-C', '60', '0', 'Luso Cars'),
(47, 'Evaporador Universal 4 Ductos', '51.69', '1.00', 'Est 16-D', '80', '0', 'Luso Cars'),
(48, 'Evaporador Daruma Mediano', '43', '2.00', 'Est 16-D', '65', '0', 'Luso Cars'),
(49, 'Evaporador Grand Chery Tiggo', '34.18', '1.00', 'Est 16-D', '55', '0', 'Luso Cars'),
(50, 'Evaporador Chery Tiggo', '45.42', '1.00', 'Est 16-D', '65', '0', 'Luso Cars'),
(51, 'Evaporador Fiat Uno Fire 94-97', '20', '1.00', 'Est 15-B', '40', '0', 'Carfloca'),
(52, 'Evaporador Fiat Palio Block 98-99', '36', '1.00', 'Est 15-B', '55', '0', 'Ruizar'),
(53, 'Evaporador Fiat Palio/Siena Fire 98-00 (Bloque)', '36.52', '1.00', 'Est 15-B', '55', '0', 'Luso Cars'),
(55, 'Evaporador Volkswagen Bora/Gol Jetta 96-00', '37.87', '1.00', 'Est 15-B', '60', '0', 'Luso Cars'),
(56, 'Evaporador Renault Megane 00-05', '37.85', '1.00', 'Est 15-B', '60', '0', 'Luso Cars'),
(57, 'Evaporador Renault Logan 04-07 (Grueso)', '35.52', '1.00', 'Est 15-C', '55', '0', 'Luso Cars'),
(58, 'Evaporador Logan 08-09', '31', '1.00', 'Est 15-C', '50', '0', 'Ruizar'),
(59, 'Evaporador Honda Civic 96-01', '44.69', '1.00', 'Est 15-C', '65', '0', 'Luso Cars'),
(60, 'Evaporador Mitsubishi Lancer 94-02', '41.17', '1.00', 'Est 15-C', '60', '0', 'Luso Cars'),
(61, 'Evaporador Mitsubishi Canter/L200', '37.50', '1.00', 'Est 15-C', '60', '0', 'Ruizar'),
(62, 'Evaporador Mitsubishi Lancer Touring/Montero 02-05', '32.40', '0.00', 'Est 15-C', '50', '0', 'Luso Cars'),
(63, 'Evaporador Volkswagen Polo/Meriva/Ibiza', '39.73', '1.00', 'Est 15-D', '60', '0', 'Luso Cars'),
(64, 'Evaporador Kia Pregio 06-10', '39.50', '1.00', 'Est 15-D', '60', '0', 'Ruizar'),
(65, 'Evaporador Century/Columbia/Frelainer 03-07', '37.09', '1.00', 'Est 15-D', '60', '0', 'Luso Cars'),
(66, 'Evaporador Peugeot 307', '36.31', '1.00', 'Est 15-D', '55', '0', 'Ruizar'),
(67, 'Evaporador Peugeot 206', '36.31', '1.00', 'Est 15-D', '55', '0', 'Ruizar'),
(68, 'Evaporador Vitara LS', '22.5', '2.00', 'Est 15-D', '45', '0', 'Carfloca'),
(69, 'Evaporador Mazda 6/CX7', '36.11', '1.00', 'Est 15-E', '55', '0', 'Luso Cars'),
(70, 'Evaporador Mazda BT50 07-13', '35.15', '1.00', 'Est 15-E', '55', '0', 'Luso Cars'),
(71, 'Evaporador Mazda 3/ Mazda 5', '36.11', '1.00', 'Est 15-E', '55', '0', 'Luso Cars'),
(72, 'Evaporador Chery X1', '32.65', '1.00', 'Est 15-E', '50', '0', 'Luso Cars'),
(73, 'Evaporador Chery Arauca 10-12', '39', '1.00', 'Est 15-E', '60', '0', 'Ruizar'),
(74, 'Evaporador Chery Orinoco', '43', '1.00', 'Est 15-F', '65', '0', 'Ruizar'),
(75, 'Lata Frezze R134 1kg', '20', '1.00', 'Mostrador', '30', '0', 'Frio K29'),
(76, 'Lata Articool R134 800g', '15', '1.00', 'Mostrador', '25', '0', 'Frio K29'),
(77, 'Lata Maslex R134 1kg', '20', '5.00', 'Mostrador', '30', '0', 'L. Freitez'),
(78, 'Lata Gas FR22 800g', '20', '1.00', 'Mostrador', '30', '0', 'L. Freitez'),
(79, 'Lata Arlington R404 800g', '20', '1.00', 'Mostrador', '30', '0', 'L. Freitez'),
(80, 'Lata Frezze R410 800g', '15', '10.00', 'Mostrador', '25', '0', 'Frezze'),
(81, 'Lata DuPont R134 750g', '20', '8.00', 'Mostrador', '30', '0', 'L. Freitez'),
(82, 'Masa V5 (Remanufacturada)', '55.61', '2.00', 'Mostrador/ Est 10-D', '85', '0', 'Luso Cars'),
(83, 'Compresor 7B10', '111.70', '1.00', 'Mostrador', '180', '0', 'Luso Cars'),
(84, 'Compresor V5/Optra', '156.50', '1.00', 'Mostrador', '240', '0', 'Luso Cars'),
(85, 'Compresor Van Express', '60', '1.00', 'Mostrador', '100', '0', 'Airca'),
(86, 'Evaporador Ford Explorer 02-04', '36.56', '1.00', 'Est 14B', '60', '0', 'Luso Cars'),
(87, 'Evaporador Ford Explorer Trasero 02-10', '39.25', '1.00', 'Est 14B', '60', '0', 'Luso Cars'),
(88, 'Evaporador Ford Explorer Cuerpo Grueso 03-05', '39.83', '1.00', 'Est 14-B', '60', '0', 'Luso Cars'),
(89, 'Evaporador Ford Explorer Trasero 11-19', '35.70', '1.00', 'Est 14-C', '55', '0', 'Luso Cars'),
(90, 'Evaporador Ford Fiesta Power/ Ecosport 04-12', '33', '2.00', 'Est 14-C', '55', '0', 'Ruizar'),
(91, 'Evaporador Ford Expedition 09-17/ F150', '39.91', '1.00', 'Est 14-C', '60', '0', 'Luso Cars'),
(92, 'Evaporador Ford Escape', '30', '1.00', 'Est 14-C', '50', '0', 'Carfloca'),
(93, 'Evaporador Ford Focus 00-07', '37.45', '1.00', 'Est 14-D', '60', '0', 'Luso Cars'),
(94, 'Evaporador Ford Focus 08-11', '33.77', '1.00', 'Est 14-D', '55', '0', 'Luso Cars'),
(95, 'Evaporador Ford Fusion 06-09', '38.82', '2.00', 'Est 14-D', '60', '0', 'Luso Cars'),
(96, 'Evaporador Ford Bronco F134', '36.86', '0.00', 'Est 14-E', '60', '0', 'Luso Cars'),
(97, 'Evaporador Ford Mustang 05-09', '33.95', '1.00', 'Est 14-E', '55', '0', 'Luso Cars'),
(98, 'Evaporador Ford Ranger 01-07', '38.79', '1.00', 'Est 14-E', '60', '0', 'Luso Cars'),
(99, 'Evaporador Ford Laser 01-03', '40.53', '1.00', 'Est 14-E', '60', '0', 'Luso Cars'),
(100, 'Evaporador Ford FX4', '39.74', '1.00', 'Est 14-E', '60', '0', 'Luso Cars'),
(101, 'Evaporador Ford Super Duty', '35.95', '1.00', 'Est 14-E (Lateral)', '55', '0', 'Luso Cars'),
(102, 'Evaporador Toyota Camry/ Avalon 02-06', '30', '1.00', 'Est 13-A', '50', '0', 'Carfloca'),
(103, 'Evaporador Toyota Sienna/ Mini Vans', '30', '1.00', 'Est 13-A', '50', '0', 'Carfloca'),
(104, 'Evaporador Toyota Burbuja/ Autana 98-03', '30', '3.00', 'Est 13-B', '50', '0', 'Carfloca'),
(105, 'Evaporador Toyota Burbuja/ Autana 93-97', '39.89', '1.00', 'Est 13-B', '60', '0', 'Luso Cars'),
(106, 'Evaporador Toyota Camry/ Previa 07-15', '37.53', '2.00', 'Est 13-B', '60', '0', 'Luso Cars'),
(107, 'Evaporador Toyota Camry/ Previa 18-21', '39', '2.00', 'Est 13-B', '60', '0', 'Ruizar'),
(108, 'Evaporador Toyota Corolla/Fourtuner/Hilux 09-12', '35', '1.00', 'Est 13-B', '55', '0', 'Ruizar'),
(109, 'Evaporador Toyota Runner/ Lexus 03-09', '39.83', '2.00', 'Est 13-C', '60', '0', 'Luso Cars'),
(110, 'Evaporador Toyota Runner/ Meru 98-02', '39.50', '2.00', 'Est 13-C', '60', '0', 'Ruizar'),
(111, 'Evaporador Toyota Corolla 05-08 Fino', '32.48', '1.00', 'Est 13-C', '50', '0', 'Luso Cars'),
(112, 'Evaporador Toyota Corolla New Sensation', '28', '1.00', 'Est 13-C', '50', '0', 'Ruizar'),
(113, 'Evaporador Toyota Terios 03-07', '34.58', '1.00', 'Est 13-C', '55', '0', 'Luso Cars'),
(114, 'Evaporador Toyota Terios Bego', '29.97', '1.00', 'Est 13-C', '50', '0', 'Luso Cars'),
(115, 'Evaporador Toyota Yaris 00-04', '33', '2.00', 'Est 13-C', '55', '0', 'Ruizar'),
(117, 'Evaporador Toyota Yaris 06', '35', '1.00', 'Est 13-C', '55', '0', 'Ruizar'),
(118, 'Evaporador Toyota Hino', '40', '1.00', 'Est 13-C', '60', '0', 'Ruizar'),
(119, 'Evaporador Toyota Hilux Serpentin 98-00', '37', '1.00', 'Est 13-D', '60', '0', 'Luso Cars'),
(120, 'Evaporador Toyota Hilux 00-05', '37.6', '1.00', 'Est 13-D', '60', '0', 'Luso Cars'),
(121, 'Evaporador Toyota Hilux Fortuner 05-08', '33', '1.00', 'Est 13-D', '55', '0', 'Luso Cars'),
(122, 'Evaporador Toyota Hilux Fortuner Dubay', '39.80', '1.00', 'Est 13-D', '60', '0', 'Luso Cars'),
(123, 'Evaporador Toyota Tundra 07-17', '39', '2.00', 'Est 13-D', '60', '0', 'Luso Cars'),
(124, 'Evaporador Toyota Tacoma 05-14', '33.20', '1.00', 'Est 13-D', '55', '0', 'Luso Cars'),
(125, 'Evaporador Blazer Durango R12', '29', '2.00', 'Est 12-A', '50', '0', 'Airca'),
(126, 'Evaporador Vitara XL5', '30', '1.00', 'Est 12-A', '50', '0', 'Nevada'),
(127, 'Evaporador Blazer 95-99 R134', '40', '0.00', 'Est 12-B', '60', '0', 'Ruizar'),
(128, 'Evaporador Chayenne/ Gran Blazer R134', '38.73', '1.00', 'Est 12-B', '60', '0', 'Luso Cars'),
(129, 'Evaporador Silverado Tahoe 02-09', '37.72', '1.00', 'Est 12-B', '60', '0', 'Luso Cars'),
(130, 'Evaporador Captiva 07-08', '34.64', '1.00', 'Est 12-B', '55', '0', 'Luso Cars'),
(131, 'Evaporador Vagon R', '30', '1.00', 'Est 12-B', '50', '0', 'Carfloca'),
(132, 'Evaporador Van Express', '35.46', '1.00', 'Est 12-B', '55', '0', 'Luso Cars'),
(133, 'Evaporador Aveo Grueso', '39', '1.00', 'Est 12-C', '60', '0', 'Ruizar'),
(134, 'Evaporador Aveo LT', '34.80', '1.00', 'Est 12-C', '55', '0', 'Luso Cars'),
(135, 'Evaporador Aveo Fino (Luso)', '27.43', '1.00', 'Est 12-C', '50', '0', 'Luso Cars'),
(136, 'Evaporador Aveo Fino (Ruizar)', '30', '1.00', 'Est 12-C', '50', '0', 'Ruizar'),
(137, 'Evaporador Spark', '32', '2.00', 'Est 12-C', '50', '0', 'Ruizar'),
(138, 'Evaporador Dmax 03-08', '32.25', '1.00', 'Est 12-C', '50', '0', 'Luso Cars'),
(139, 'Evaporador Dmax 09-11', '34.17', '1.00', 'Est 12-C', '55', '0', 'Luso Cars'),
(140, 'Evaporador Optra Desing 98-00', '31.29', '1.00', 'Est 12-D', '50', '0', 'Luso Cars'),
(141, 'Evaporador Optra 03-06', '31.28', '1.00', 'Est 12-D', '50', '0', 'Luso Cars'),
(142, 'Evaporador Optra Limited', '37.84', '1.00', 'Est 12-D', '60', '0', 'Luso Cars'),
(143, 'Evaporador Epica', '34.82', '1.00', 'Est 12-D', '55', '0', 'Luso Cars'),
(144, 'Evaporador Montana', '33', '1.00', 'Est 12-D', '50', '0', 'Ruizar'),
(145, 'Evaporador Cruze/ Orlando', '30', '1.00', 'Est 12-D', '50', '0', 'Luso Cars'),
(146, 'Evaporador Malibu', '30', '0.00', 'Est 12-E', '55', '0', 'Nevada'),
(147, 'Evaporador Corsa 00-03', '36.54', '1.00', 'Est 12-E', '60', '0', 'Luso Cars'),
(148, 'Evaporador Corsa 04-06', '30.71', '1.00', 'Est 12-E', '50', '0', 'Luso Cars'),
(149, 'Evaporador Corsa 98', '37.20', '1.00', 'Est 12-E', '60', '0', 'Luso Cars'),
(150, 'Evaporador Universal 5 Rejillas 12V (Ambulancia)', '98.50', '1.00', 'Mostrador', '160', '0', 'Luso Cars'),
(151, 'Evaporador Universal 4 Rejillas 12V', '52.55', '0.00', 'Mostrador', '80', '0', 'Luso Cars'),
(152, 'Filtro Deshidratador Ford Explorer 05-10 Tubo Largo', '23.34', '1.00', 'Est 19-A', '38', '0', 'Luso Cars'),
(153, 'Condensador Toyota Corolla Sensacion 05-08', '49', '1.00', 'Est 19-B', '80', '0', 'Luso Cars'),
(155, 'Condensador Toyota Terios 00-07', '52.03', '1.00', 'Est 19-B', '80', '0', 'Luso Cars'),
(156, 'Condensador Toyota Yaris 06-15', '44.07', '1.00', 'Est 19-B', '75', '0', 'Luso Cars'),
(157, 'Condesador Toyota Hilux 00-05', '50', '1.00', 'Est 19-B', '80', '0', 'Luso Cars'),
(158, 'Condensador Fiat Palio 98-00', '39.75', '1.00', 'Est 19-B', '65', '0', 'Luso Cars'),
(159, 'Condensador Fiat Palio Siena Fire', '45.26', '1.00', 'Est 19-B', '75', '0', 'Luso Cars'),
(160, 'Condensador Ford Focus 00-05', '53.90', '1.00', 'Est 19-C', '85', '0', 'Luso Cars'),
(161, 'Condensador Chery Arauca', '53.19', '1.00', 'Est 19-C', '85', '0', 'Ruizar'),
(162, 'Condensador Toyota Corolla 09-12', '52', '1.00', 'Est 19-C', '80', '0', 'Ruizar'),
(163, 'Condensador Kia Pregio Grande', '30', '1.00', 'Est 19-C', '55', '0', 'Carfloca'),
(164, 'Condensador Toyota Hilux/ Fourtuner 05-10', '50.82', '1.00', 'Est 19-C', '80', '0', 'Luso Cars'),
(165, 'Condensador Renault Megane', '44.96', '1.00', 'Est 19-C', '75', '0', 'Luso Cars'),
(166, 'Condensador Toyota Tacoma 10-15', '62', '1.00', 'Est 19-C', '95', '0', 'Ruizar'),
(167, 'Condensador Toyota Runner/ Meru 96-02', '44.48', '1.00', 'Est 19-C', '75', '0', 'Luso Cars'),
(168, 'Condensador Aveo C. Filtro', '45.98', '1.00', 'Est 19-C', '75', '0', 'Luso Cars'),
(169, 'Condensador Ford Fiesta Power', '37.58', '0.00', 'Est 19-C', '70', '0', 'Luso Cars'),
(170, 'Condensador Optra', '46.67', '1.00', 'Est 19-C', '75', '0', 'Luso Cars'),
(171, 'Condensador Universal 21x21', '43', '2.00', 'Est 20-B', '70', '0', 'Airca'),
(172, 'Condensador Toyota Camry 06-11', '45.75', '1.00', 'Est 20-B', '75', '0', 'Luso Cars'),
(173, 'Condensador Mitsubishi Lancer', '45', '1.00', 'Est 20-B', '75', '0', 'Nevada'),
(174, 'Condensador Kia Stilus/ Rio', '57', '1.00', 'Est 20-B', '90', '0', 'Ruizar'),
(175, 'Condensador Toyota Machito/ Lancruser 08', '56.39', '1.00', 'Est 20-B', '90', '0', 'Luso Cars'),
(176, 'Condensador Hyundai Santa Fe', '63.21', '1.00', 'Est 20-C', '100', '0', 'Luso Cars'),
(177, 'Condensador Ford Triton 99-07', '62.66', '1.00', 'Est 20-C', '100', '0', 'Luso Cars'),
(178, 'Evaporador Ford Triton 99-07', '38.84', '0.00', 'Est 14-D (Lateral)', '60', '0', 'Luso Cars'),
(179, 'Condensador Ford Fortaleza/ F150', '57.57', '1.00', 'Est 20-C', '93', '0', 'Luso Cars'),
(180, 'Condensador Universal 16x28', '41', '1.00', 'Est 21-B', '65', '0', 'Airca'),
(181, 'Condensador Universal 12x20', '28.82', '1.00', 'Est 21-B', '50', '0', 'Nevada'),
(182, 'Condensador Universal 11x20', '26.81', '1.00', 'Est 21-B', '50', '0', 'Nevada'),
(183, 'Condensador Universal 10x20', '24.91', '2.00', 'Est 21-B', '45', '0', 'Nevada'),
(184, 'Condensador Universal 17x35', '48', '1.00', 'Est 21-C', '75', '0', 'Airca'),
(185, 'Motor Soplador Corolla 93-97', '30.60', '0.00', 'Est', '50', '0', 'Ruizar'),
(186, 'Filtro Secador Orinoco/ Chery Tiuna 16', '8', '3.00', 'Est', '15', '0', 'Luso Cars'),
(187, 'Filtro Deshidratador Ford Fortaleza (Toma Block)', '17.95', '2.00', 'Est 28-A', '30', '0', 'Ruizar'),
(188, 'Filtro Deshidratador Ford Fortaleza (Rosca)', '22.24', '1.00', 'Est 28-A', '35', '0', 'Luso Cars'),
(189, 'Filtro Deshidratador Ford Fiesta', '12.58', '2.00', 'Est 28-A', '25', '0', 'Airca'),
(190, 'Filtro Deshidratador Ford Explorer 05-10 Tubo Corto', '21', '1.00', 'Est 28-A', '30', '0', 'Luso Cars'),
(191, 'Filtro Deshidratador Ford Fiesta Power', '17', '1.00', 'Est 28-B', '30', '0', 'Luso Cars'),
(192, 'Filtro Deshidratador Ford Ecosport', '18.90', '1.00', 'Est 28-B', '35', '0', 'Luso Cars'),
(193, 'Filtro Deshidratador Ford Escape 01-05', '18.80', '1.00', 'Est 28-B', '35', '0', 'Ruizar'),
(194, 'Filtro Deshidratador Ford Bronco F134', '21.53', '1.00', 'Est 28-B', '35', '0', 'Luso Cars'),
(195, 'Filtro Deshidratador Ford Focus C/Rapida 00-07', '16.89', '2.00', 'Est 28-B', '30', '0', 'Nevada'),
(196, 'Filtro Deshidratador Ford Explorer 98-01', '22.07', '2.00', 'Est 28-B', '35', '0', 'Luso Cars'),
(197, 'Filtro Deshidratador GM Malibu', '8.80', '2.00', 'Est 28-C', '20', '0', 'Nevada'),
(198, 'Filtro Deshidratador GM Capris S/Brazo', '7', '1.00', 'Est 28-C', '18', '0', 'Airca'),
(199, 'Filtro Deshidratador GM Capris S/Brazo', '7', '1.00', 'Est 28-C', '18', '0', 'Airca'),
(200, 'Filtro Deshidratador GM Cheyenne/ Silverado 99-07', '15.70', '2.00', 'Est 28-C', '30', '0', 'Ruizar'),
(202, 'Filtro Deshidratador GM Blazer 94-00 F134', '10.54', '2.00', 'Est 28-C', '22', '0', 'Nevada'),
(203, 'Filtro Deshidratador Gran Cherokee 05-10 KK', '16.26', '4.00', 'Est 28-C', '30', '0', 'Ruizar'),
(204, 'Filtro Deshidratador BMW', '15', '2.00', 'Est 28-C', '25', '0', 'Ruizar'),
(205, 'Filtro Deshidratador Gran Cherokee 98-01', '10', '2.00', 'Est 28-D', '20', '0', 'Carfloca'),
(206, 'Filtro Deshidratador GM Caliver F134', '10', '2.00', 'Est 28-D', '20', '0', 'Carfloca'),
(207, 'Filtro Deshidratador GM Lumina Carro', '10', '2.00', 'Est 28-D', '20', '0', 'Carfloca'),
(208, 'Motor Soplador Toyota Zamuray 81-85', '19.91', '1.00', 'Est 26-A', '40', '0', 'Nevada'),
(209, 'Motor Soplador Toyota Runner 03-09 (Luso)', '31.46', '1.00', 'Est 26-A', '50', '0', 'Luso Cars'),
(210, 'Motor Soplador Toyota Runner 03-09 (Ruizar)', '34', '2.00', 'Est 26-A', '53', '0', 'Ruizar'),
(211, 'Motor Electro Ventilador Toyota Corolla 03-13', '27.38', '2.00', 'Est 26-A', '45', '0', 'Airca'),
(212, 'Motor Soplador Toyota Hilux / Fortuner 06-09 (Luso)', '29.56', '2.00', 'Est 26-A', '50', '0', 'Luso Cars'),
(213, 'Motor Soplador Toyota Hilux / Fortuner 06-09 (Ruizar)', '34.90', '2.00', 'Est 26-A', '53', '0', 'Ruizar'),
(214, 'Motor Electro Ventilador Toyota Baby Camry 90-95/ Camry Lumiere', '30', '2.00', 'Est 26-A', '50', '0', 'Airca'),
(215, 'Motor Electro Ventilador Toyota Corolla 94-01', '22.90', '1.00', 'Est 26-A', '40', '0', 'Airca'),
(216, 'Motor Electro Ventilador Toyota Corolla 03-15', '26', '1.00', 'Est 26-A', '45', '0', 'Airca'),
(217, 'Motor Soplador Toyota Hilux/ Fortuner/ Kavac 10-15', '33', '1.00', 'Est 26-A', '50', '0', 'Ruizar'),
(218, 'Motor Soplador Toyota Camry/ Burbuja', '42', '1.00', 'Est 26-A', '60', '0', 'Ruizar'),
(219, 'Motor Soplador Mitsubishi Montero/ Hilux/Pick Up 96-00/ Machito', '35.56', '0.00', 'Est 26-A', '50', '0', 'Luso Cars'),
(220, 'Motor Soplador Toyota Runner 96-02', '32', '2.00', 'Est 26-A', '50', '0', 'Ruizar'),
(221, 'Motor Soplador Toyota Corolla 09-15', '33', '1.00', 'Est 26-A', '50', '0', 'Ruizar'),
(222, 'Motor Soplador Toyota Corolla 03-08', '30.93', '1.00', 'Est 26-A', '50', '0', 'Luso Cars'),
(223, 'Motor Soplador Toyota Corolla 98-02', '28.20', '1.00', 'Est 26-A', '48', '0', 'Luso Cars'),
(224, 'Motor Soplador Silverado 03-04 C/ Resistencia', '20', '2.00', 'Est 26-B', '35', '0', 'Carfloca'),
(225, 'Motor Soplador Silverado 07-08', '33.68', '1.00', 'Est 28-B', '50', '0', 'Luso Cars'),
(226, 'Motor Soplador Silverado 07-11', '33.34', '1.00', 'Est 26-B', '50', '0', 'Luso Cars'),
(227, 'Motor Soplador Cheyenne/ Silverado 00-03', '20', '1.00', 'Est 26-B', '40', '0', 'Carfloca'),
(228, 'Motor Soplador Cheyenne/ Silverado 00-03', '20', '1.00', 'Est 26-B', '40', '0', 'Carfloca'),
(229, 'Motor Soplador Impala', '25', '1.00', 'Est 26-B', '45', '0', 'Carfloca'),
(230, 'Motor Soplador Cavalier Turbina Baja', '25', '1.00', 'Est 26-B', '45', '0', 'Carfloca'),
(231, 'Motor Soplador Cavalier Turbina Alta', '25', '1.00', 'Est 26-B', '45', '0', 'Carfloca'),
(232, 'Motor Soplador Blazer 93-96', '25', '1.00', 'Est 26-B', '45', '0', 'Carfloca'),
(233, 'Motor Soplador Aveo/ LuvDmax 04-11', '30.24', '1.00', 'Est 26-B', '50', '0', 'Luso Cars'),
(234, 'Motor Soplador Chevrolet Cruze/ Orlando', '33', '1.00', 'Est 26-B', '50', '0', 'Ruizar'),
(235, 'Motor Soplador Renault Logan 06-12', '42.03', '2.00', 'Est 26-C', '60', '0', 'Airca'),
(236, 'Motor Soplador Renault Clio/ Simbol', '36', '2.00', 'Est 26-C', '55', '0', 'Airca'),
(237, 'Motor Soplador Van Express 12', '35', '1.00', 'Est 26-C', '50', '0', 'Airca'),
(238, 'Motor Soplador Peugeot Pantier', '35', '1.00', 'Est 26-C', '50', '0', 'Airca'),
(239, 'Motor Soplador Volkswagen Jetta/ Passat/ Audi', '41.44', '1.00', 'Est 26-C', '60', '0', 'Ruizar'),
(240, 'Motor Soplador Freigliner', '20', '5.00', 'Est 26-D', '40', '0', 'Carfloca'),
(241, 'Motor Soplador GM Pick Up 88-91/ Blazer 91-94', '32.71', '1.00', 'Esta 26-C', '50', '0', 'Luso Cars'),
(242, 'Motor Ventilador Corsa 01-03', '10', '1.00', 'Est 26-D', '22', '0', 'Nevada'),
(243, 'Motor Soplador Fiat Uno', '20', '4.00', 'Est 27-A', '40', '0', 'Carfloca'),
(244, 'Motor Para El Soplador Hilux/ Fortuner 17-21', '15', '1.00', 'Est 27-A', '30', '0', 'Luso Cars'),
(245, 'Motor Universal 1 Eje 24 V', '10', '1.00', 'Est 27-A', '22', '0', 'Carfloca'),
(246, 'Motor Universal 2 Ejes 12 V', '12.54', '3.00', 'Est 27-A', '25', '0', 'Luso Cars'),
(247, 'Motor Soplador Ford Bronco 87-96/ Liriat', '34.45', '1.00', 'Est 27-B', '50', '0', 'Luso Cars'),
(248, 'Motor Soplador Ford Escape 08-12', '31.56', '0.00', 'Est 27-B', '50', '0', 'Ruizar'),
(249, 'Motor Soplador Ford FX4 05-09', '30', '2.00', 'Est 27-B', '50', '0', 'Ruizar'),
(250, 'Motor Soplador Ford Fortaleza 98-03', '31', '1.00', 'Est 27-B', '50', '0', 'Ruizar'),
(252, 'Motor Soplador Super Duty 11-16', '33.63', '1.00', 'Est 27-B', '50', '0', 'Luso Cars'),
(254, 'Motor Soplador Ford Explorer 02-10', '32.05', '1.00', 'Est 27-B', '50', '0', 'Luso Cars'),
(256, 'Motor Soplador Ford Explorer 98-01/ Ranger', '30', '1.00', 'Est 27-B', '50', '0', 'Ruizar'),
(257, 'Motor Soplador Ford Focus (Larfloca)', '30', '2.00', 'Est 27-C', '50', '0', 'Carfloca'),
(258, 'Motor Soplador Ford Focus (TYC)', '35', '1.00', 'Est 27-C', '53', '0', 'TYC'),
(259, 'Motor Soplador Ford Failaner', '20', '2.00', 'Est 27-C', '40', '0', 'Carfloca'),
(261, 'Motor Soplador Ford Fiesta Power 04-12', '35', '1.00', 'Est 27-C', '53', '0', 'Ruizar'),
(262, 'Motor Soplador Ford Laser', '25', '1.00', 'Est 27-C', '45', '0', 'Nevada'),
(263, 'Motor Soplador Mazda 3/ Mazda 5', '32', '1.00', 'Est 27-C', '50', '0', 'Airca'),
(264, 'Motor Soplador Honda Civic Evolution', '40.60', '1.00', 'Est 27-C', '60', '0', 'Airca'),
(265, 'Motor Soplador GM Cadilac/ Pontiac (usado)', '20', '1.00', 'Est 27-C', '35', '0', 'Carfloca'),
(267, 'Motor Soplador Hyundai Accent', '25', '1.00', 'Est 27-D', '40', '0', 'Carfloca'),
(268, 'Motor Soplador GM Spark 09-12/ Hyundai Atoz', '36.30', '1.00', 'Est 27-D', '53', '0', 'Luso Cars'),
(269, 'Motor Soplador Hyundai Tucson/ Picanto/ Kia Sportage', '33', '1.00', 'Est 27-D', '50', '0', 'Ruizar'),
(270, 'Motor Soplador Mitsubishi Signo', '30', '1.00', 'Est 27-D', '50', '0', 'Ruizar'),
(271, 'Motor Soplador Mitsubishi Lancer 02-05/ Touring', '32', '1.00', 'Est 27-D', '50', '0', 'Ruizar'),
(272, 'Motor Para Electro Chery Confort', '15', '1.00', 'Est 27-A', '30', '0', 'Carfloca'),
(273, 'Motor Soplador Gran Cherokee 05-10', '34.10', '1.00', 'Est 27-D', '50', '0', 'Luso Cars'),
(274, 'Motor Soplador Gran Cherokee 11-16', '33.20', '1.00', 'Est 27-D', '50', '0', 'Luso Cars'),
(276, 'Motor Soplador Fiat Palio 98-08/ Siena 00-12', '26.28', '1.00', 'Est 27-E', '45', '0', 'Luso Cars'),
(277, 'Motor Soplador Para Adaptar', '5', '11.00', 'Est 27-F', '10', '0', 'Carfloca'),
(278, 'Motor Soplador Avalanche/ Silverado', '32.92', '1.00', 'Est 27-E', '50', '0', 'Airca'),
(279, 'Aspas De Sopladores Para Adaptar', '5', '18.00', 'Est 27-E', '10', '0', 'Carfloca'),
(280, 'Filtro Antipolen Aveo 1.6', '3.25', '1.00', 'Exibicion', '7', '0', 'Rodifilter'),
(281, 'Filtro Antipolen Aveo LS/LuvDmax', '3.25', '2.00', 'Exibicion', '7', '0', 'Rodifilter'),
(282, 'Filtro Antipolen Aveo LT', '3.25', '4.00', 'Exibicion', '7', '0', 'Rodifilter'),
(283, 'Filtro Antipolen Toyota Corolla', '3.25', '1.00', 'Exibicion', '7', '0', 'Rodifilter'),
(284, 'Filtro Antipolen Toyota Fortuner/ Hilux', '5.67', '2.00', 'Est Microondas', '10', '0', 'Rodifilter'),
(285, 'Filtro Antipolen Optra LT', '4.10', '2.00', 'Exibicion', '7', '0', 'Rodifilter'),
(286, 'Deshidratador Tahoe/ Avalanche Para Adaptar', '8', '18.00', 'Est 28-E', '15', '0', 'Carfloca'),
(287, 'Deshidratador Hyundai Exe/ Para Adaptar', '8', '6.00', 'Est 28-F', '15', '0', 'Carfloca'),
(288, 'Deshidratador Fiat Tempra R12 Para Adaptar', '8', '8.00', 'Est 28-F', '15', '0', 'Carfloca'),
(289, 'Filtro Secador Renault Twingo/ Megane', '7.73', '6.00', 'Est 29-D', '15', '0', 'Luso Cars'),
(290, 'Filtro Secador Hyundai Tucson', '6.98', '1.00', 'Est 29-D', '15', '0', 'Luso Cars'),
(291, 'Filtro Secador Neon 01-02', '8.47', '2.00', 'Est 29-D', '15', '0', 'Luso Cars'),
(292, 'Filtro Secador Neon 97-99', '8.40', '1.00', 'Est 29-D', '15', '0', 'Luso Cars'),
(293, 'Filtro Secador Aveo', '6.92', '6.00', 'Est 29-B', '15', '0', 'Luso Cars'),
(294, 'Filtro Secador Optra', '7.84', '3.00', 'Est 29-B', '17', '0', 'Luso Cars'),
(295, 'Filtro Secador Epica', '9.81', '3.00', 'Est 29-B', '20', '0', 'Luso Cars'),
(296, 'Filtro Secador Corsa 01', '7.93', '1.00', 'Est 29-B', '15', '0', 'Ruizar'),
(297, 'Filtro Secador Meriva', '7.14', '3.00', 'Est 29-B', '15', '0', 'Airca'),
(298, 'Filtro Secador Montana', '7.62', '3.00', 'Est 29-B', '15', '0', 'Luso Cars'),
(299, 'Filtro Secador LuvDmax', '8', '2.00', 'Est 29-B', '17', '0', 'Ruizar'),
(300, 'Filtro Secador Gran Vitara Xl5/ Susuky', '8', '4.00', 'Est 29-B', '17', '0', 'Ruizar'),
(301, 'Filtro Secador Mercedes Benz 02-04', '9', '2.00', 'Est 29-B', '20', '0', 'Ruizar'),
(302, 'Filtro Secador Mercedes Benz 96-01', '8', '1.00', 'Est 29-B', '17', '0', 'Carfloca'),
(303, 'Filtro Secador Corsa 98', '5', '5.00', 'Est 29-B', '10', '0', 'Carfloca'),
(304, 'Filtro Secador Renault Hembra/ Macho', '5', '1.00', 'Est 29-B', '10', '0', 'Carfloca'),
(305, 'Filtro Secador Toyota R12 90-93', '5', '5.00', 'Est 29-C', '10', '0', 'Carfloca'),
(306, 'Filtro Secador Toyota R134 94-03', '5.14', '1.00', 'Est 29-C', '10', '0', 'Luso Cars'),
(307, 'Filtro Secador Toyota Milimetrico', '4.91', '5.00', 'Est 29-C', '10', '0', 'Luso Cars'),
(308, 'Filtro Secador Cherokee Limited KK', '8.94', '3.00', 'Est 29-C', '20', '0', 'Luso Cars'),
(309, 'Filtro Secador Mazda 3', '6.90', '2.00', 'Est 29-C', '15', '0', 'Luso Cars'),
(310, 'Filtro Secador Honda Fit/ Civic', '7.53', '2.00', 'Est 29-C', '15', '0', 'Ruizar'),
(311, 'Filtro Secador Honda Civic 96', '7.80', '1.00', 'Est 29-C', '17', '0', 'Ruizar'),
(312, 'Filtro Secador Daewoo Nubira 98-99', '7.44', '6.00', 'Est 29-C', '17', '0', 'Luso Cars'),
(313, 'Filtro Secador Daewoo Nubira 00-02', '7.45', '1.00', 'Est 29-C', '17', '0', 'Luso Cars'),
(314, 'Filtro Secador Camion Kenworth Hembra/ Macho', '13.12', '2.00', 'Est 29-D', '22', '0', 'Luso Cars'),
(315, 'Filtro Secador Camion Freightliner 02-07/ Columbia', '14.81', '2.00', 'Est 29-D', '25', '0', 'Luso Cars'),
(316, 'Filtro Secador Universal Oring Para Camion', '9', '2.00', 'Est 29-D', '20', '0', 'Luso Cars'),
(317, 'Filtro Secador Peugeot', '9.33', '2.00', 'Est 29-D', '22', '0', 'Luso Cars'),
(318, 'Filtro Secador Chery Arauca', '7.72', '3.00', 'Est 29-D', '15', '0', 'Luso Cars'),
(319, 'Filtro Secador Fiesta Titanium', '8.44', '2.00', 'Est 29-E', '18', '0', 'Luso Cars'),
(320, 'Filtro Secador Mitsubishi Lancer 134', '8', '2.00', 'Est 29-E', '17', '0', 'Ruizar'),
(321, 'Filtro Secador Mitsubishi Para Adaptar', '2.5', '16.00', 'Est 29-E', '5', '0', 'Carfloca'),
(322, 'Filtro Secador Mitsubishi Signo', '2.5', '6.00', 'Est 29-E', '5', '0', 'Carfloca'),
(323, 'Filtro Secador Volswagen Passat/ Bora', '2.5', '6.00', 'Est 29-E', '5', '0', 'Carfloca'),
(324, 'Filtro Secador Volswagen Vento', '2.5', '2.00', 'Est 29-E', '5', '0', 'Carfloca'),
(325, 'Filtro Secador Vans', '2.5', '3.00', 'Est 29-E', '5', '0', 'Carfloca'),
(326, 'Filtro Secador Renault Megan Classic', '2.5', '2.00', 'Est 29-F', '5', '0', 'Carfloca'),
(327, 'Filtro Secador Chevrolet Astra', '2.5', '14.00', 'Est 29-F', '5', '0', 'Carfloca'),
(328, 'Filtro Secador Hyundai Elantra/ Accent', '2.5', '11.00', 'Est 29-F', '5', '0', 'Carfloca'),
(329, 'Filtro Secador Kia/ Nubira Para Adaptar', '2.5', '4.00', 'Est 29-F', '5', '0', 'Carfloca'),
(330, 'Filtro Secador Nissan Sentra', '2.5', '4.00', 'Est 29-F', '5', '0', 'Carfloca'),
(331, 'Filtro Secador Ford Laser', '2.5', '2.00', 'Est 29-F', '5', '0', 'Carfloca'),
(332, 'Filtro Secador Top Flo Para Adaptar', '2.5', '8.00', 'Est 29-F', '5', '0', 'Carfloca'),
(333, 'Filtro universal Para Adaptar Varios', '1', '40.00', 'Est 29-G', '3', '0', 'Carfloca'),
(334, 'Filtro Universal Fitting-Fitting', '2', '10.00', 'L. Est 10, Cesta 3', '5', '0', 'Carfloca'),
(335, 'Filtro Universal Fler', '3', '2.00', 'L. Est 10, Cesta 2', '6', '0', 'Carfloca'),
(336, 'Filtro Universal Oring', '4.32', '7.00', 'L. Est 10, Cesta 1', '10', '0', 'Luso Cars'),
(337, 'Filtro Antipolen Para Adaptar', '2.5', '10.00', 'Est 10-A', '5', '0', 'Carfloca'),
(338, 'Electro Ventilador \"9\"', '12.50', '2.00', 'Est 10-A/ Exibi', '25', '0', 'Nevada'),
(339, 'Filtro Antipolen Santa Fe', '3', '9.00', 'Est 10-B', '6', '0', 'Rodifilter'),
(340, 'Bolsa Para Limpieza Aire Domestico', '10.88', '2.00', 'Est 10-B', '20', '0', 'Luso Cars'),
(341, 'Base Para Aire Domestico 12000/24000 BTU', '10', '1.00', 'Est 10-B', '20', '0', 'Luso Cars'),
(342, 'Tarjeta Universal Aire Domestico', '15.79', '2.00', 'Est 10-B/ Exibi', '25', '0', 'Luso Cars'),
(343, 'Capilar 0,42 (Rollo 30M)', '19.50', '2.00', 'Est 10-B', '35', '0', 'Infra Parts'),
(344, 'Base Para Motor 5,7,10 Wats', '2', '23.00', 'Est 10-B', '5', '0', 'Carfloca'),
(345, 'Aspa De Motor 10 Wats \"9\"', '2', '5.00', 'Est 10-B', '5', '0', 'Carfloca'),
(346, 'Aspa de Motor 5 Wats \"7\"', '2', '2.00', 'Est 10-B', '5', '0', 'Carfloca'),
(347, 'Ferruler 5/8', '0.25', '100.00', 'Est 10-C/ 5J1', '1', '0', 'Carfloca'),
(348, 'Armaflex Auto-Adesivo (10M)', '2.66', '3.00', 'Est 10-C', '8', '0', 'Luso Cars'),
(349, 'Prestite (Rollo 6M)', '5.94', '4.00', 'Est 10-C', '12', '0', 'Luso Cars'),
(350, 'Prestite (Por Metro)', '1.20', '16.00', 'Exibicion', '3', '0', 'Luso Cars'),
(351, 'Aspa Para Bomba De Agua', '1', '20.00', 'Est 10-C', '2', '0', 'Carfloca'),
(352, 'Protector Termico 12000 BTU 220V', '0.51', '6.00', 'Est 10-C', '2', '0', 'Infra Parts'),
(354, 'Protector Termico 18000 BTU 220V', '0.51', '9.00', 'Est 10-C', '2', '0', 'Infra Parts'),
(355, 'Protector Termico 24000 BTU 220V', '0.51', '24.00', 'Est 10-C', '2', '0', 'Infra Parts'),
(356, 'Tapa Del Cloche Toyota 10pa15/ 10pa17', '10', '3.00', 'Est 10-D', '20', '0', 'Luso Cars'),
(357, 'Switch Equipo Universal 5-6 Rejillas', '4', '1.00', 'Est 10-D', '8', '0', 'Luso Cars'),
(358, 'Base Para Compresor 508', '7.91', '2.00', 'Est 10-D', '17', '0', 'Luso Cars'),
(359, 'Resistencia de Toyota Yaris', '9.20', '2.00', 'Est 10-D', '20', '0', 'Luso Cars'),
(360, 'Manguera de Vacio 3/8', '6', '1.00', 'Est 9-A', '12', '0', 'Rober'),
(361, 'Manguera de Vacio 1/4', '5', '1.00', 'Est 9-A', '10', '0', 'Rober'),
(362, 'Manguera de Vacio 3/16', '4', '1.00', 'Est 9-A', '8', '0', 'Rober'),
(363, 'Filtro Silica \"18\"', '1.12', '12.00', 'Est 9-B', '4', '0', 'Luso Cars'),
(364, 'Filtro Silica \"20\"', '1.19', '5.00', 'Est 9-B', '4', '0', 'Luso Cars'),
(365, 'Filtro Silica \"25\"', '1.19', '4.00', 'Est 9-B', '4', '0', 'Luso Cars'),
(366, 'Filtro Silica \"28\"', '1.49', '6.00', 'Est 9-B', '4', '0', 'Luso Cars'),
(367, 'Filtro Silica \"34\"', '1.60', '4.00', 'Est 9-B', '5', '0', 'Nevada'),
(368, 'Motor Ventilador 5 Wats', '10.70', '1.00', 'Est 9-B', '20', '0', 'Infra Parts'),
(369, 'Tuberia Cobre 1/4 (Por Metro)', '2', '15.00', 'Exibicion', '4', '0', 'Infra Parts'),
(370, 'Tuberia Cobre 3/8 (Por Metro)', '2.71', '15.00', 'Exibicion', '6', '0', 'Infra Parts'),
(371, 'Liga de Freno', '1.85', '3.00', 'Exibicion', '4', '0', 'Sulvaran'),
(372, 'Conector Bobina FX15/FS10', '1.75', '10.00', '5H', '5', '0', 'Airca'),
(373, 'Filtro Secador Toyota R134 94-03', '6.58', '6.00', 'Est 29-C', '10', '0', 'Airca'),
(374, 'Rodamiento Sanden 508', '5.70', '6.00', '2C2', '10', '0', 'Airca'),
(375, 'Rodamiento V5', '5.73', '6.00', '2C1', '10', '0', 'Airca'),
(376, 'Electron 1/2', '2.14', '12.00', 'Exibicion', '5', '0', 'Airca'),
(377, 'Electron 1 L', '3.57', '12.00', 'Exibicion', '8', '0', 'Airca'),
(378, 'Condensador Universal 16x26', '39', '1.00', 'Est 21-D', '65', '0', 'Airca'),
(379, 'Evaporador Ford Fiesta Power/ Ecosport 04-12', '32.70', '1.00', 'Est 14-E (Lateral)', '55', '0', 'Luso Cars'),
(380, 'Evaporador Toyota 4 Runner 11-21 Doble Tanque/ Toyota Prado', '33.22', '1.00', 'Est 13-D', '55', '0', 'Luso Cars'),
(381, 'Evaporador Toyota Corolla Araya R134 98-00 (Serpentin)', '36.67', '1.00', 'Est 13-E', '55', '0', 'Luso Cars'),
(382, 'Evaporador Ford Explorer Cuerpo Fino 08-10', '35.55', '1.00', 'Est 14-C', '55', '0', 'Luso Cars'),
(383, 'Bora de Aluminio 227gr', '13.35', '3.00', 'Mostrador 2', '25', '0', 'Luso Cars'),
(384, 'Fitting 1/2 Largo Recto Oring', '0.5', '5.00', '1A1', '1', '0', 'Carfloca'),
(385, 'Fitting Union U 1/2', '2', '1.00', '1A2', '4', '0', 'Carfloca'),
(386, 'Fitting Union 1/2 C/Cargador Baja R134', '1.63', '15.00', '1B1', '4', '0', 'Infra Parts'),
(387, 'Fitting Union 13/32 C/Cargador Alta R134', '1.55', '22.00', '1C1', '3', '0', 'Infra Parts'),
(388, 'Fitting Union 5/16 C/Cargador R12', '1.28', '7.00', '1D1', '3', '0', 'Infra Parts'),
(389, 'Fitting Union 1/2 Hierro', '0.86', '19.00', '1B2', '2', '0', 'Luso Cars'),
(390, 'Fitting Union 13/32 Hierro', '0.60', '23.00', '1C2', '2', '0', 'Luso Cars'),
(391, 'Fitting Union 5/16 Hierro', '0.48', '53.00', '1D2', '2', '0', 'Luso Cars'),
(392, 'Fitting Porta Valvula Lapiz C/Rapida', '2', '7.00', '1B3', '4', '0', 'Luso Cars'),
(393, 'Fitting Porta Valvula Lapiz Rosca', '2.56', '2.00', '1B3', '5', '0', 'Luso Cars'),
(394, 'Fitting Union 5/8 A 1/2 C/Cargador R12', '1.50', '6.00', '1C3', '3', '0', 'Carfloca'),
(395, 'Fitting Union 5/8 Hierro', '1', '22.00', '1D3', '2', '0', 'Infra Parts'),
(396, 'Fitting Milimetrico Curvo Inserto', '0.62', '7.00', '1B4', '2', '0', 'Luso Cars'),
(397, 'Fitting Milimetrico Recto Oring', '0.58', '1.00', '1C4', '2', '0', 'Luso Cars'),
(398, 'Fitting Milimetrico Curvo Oring', '0.67', '3.00', '1D4', '2', '0', 'Luso Cars'),
(399, 'Fitting Toma Block Toyota 13/32 Curvo', '1.73', '7.00', '1C5', '4', '0', 'Luso Cars'),
(400, 'Fitting Toma Block Toyota 1/2 Curvo', '1.90', '9.00', '1D5', '4', '0', 'Luso Cars'),
(401, 'Fitting Toma Block Toyota 1/2 Recto', '1.88', '10.00', '1D5', '4', '0', 'Luso Cars'),
(402, 'Fitting Curvo Oring 13/32 C/Cargador Alta R134', '1', '2.00', '1B5', '2', '0', 'Carfloca'),
(403, 'Fitting 5/16 A 13/32 Curvo-Recto-Semi Curvo Oring', '1', '23.00', '1B6', '2', '0', 'Carfloca'),
(404, 'Fitting 5/16 Semi Curvo Oring', '1', '52.00', '1C6', '2', '0', 'Infra Parts'),
(405, 'Fitting Union T 5/16', '1.50', '10.00', '1D6', '3', '0', 'Carfloca'),
(406, 'Condensador Universal 14x24', '52', '1.00', 'Est 21-D', '75', '0', 'Airca'),
(407, 'Fitting Union 5/8', '0.62', '16.00', '1H1', '2', '0', 'Luso Cars'),
(408, 'Fitting 5/16 Recto Inserto', '0.72', '16.00', '1I1', '2.5', '0', 'Luso Cars'),
(409, 'Fitting 5/16 Curvo Oring', '0.60', '22.00', '1E2', '3', '0', 'Luso Cars'),
(410, 'Fitting 5/16 Recto Oring', '0.58', '34.00', '1F2', '3', '0', 'Luso Cars'),
(411, 'Fitting 5/16 Curvo Flare', '0.57', '6.00', '1G2', '3', '0', 'Luso Cars'),
(413, 'Fitting 5/16 Semi Curvo Flare', '0.70', '15.00', '1I2', '3', '0', 'Luso Cars'),
(414, 'Fitting 13/32 Curvo Oring', '0.66', '19.00', '1E3', '3', '0', 'Luso Cars'),
(415, 'Fitting 13/32 Recto Oring', '0.62', '11.00', '1F3', '3', '0', 'Luso Cars'),
(416, 'Fitting 13/32 Curvo Flare', '0.67', '12.00', '1G3', '3', '0', 'Luso Cars'),
(417, 'Fitting 13/32 Recto Flare', '0.58', '19.00', '1H3', '3', '0', 'Luso Cars'),
(418, 'Fitting 13/32 Recto Inserto', '0', '0.00', '1F3', '3', '0', 'Luso Cars'),
(419, 'Fitting 1/2 Recto Inserto', '0.78', '10.00', '1E4', '3', '0', 'Luso Cars'),
(420, 'Fitting 1/2 Curvo Oring', '0.73', '20.00', '1F4', '3', '0', 'Luso Cars'),
(421, 'Fitting 1/2 Curvo Insert', '0.82', '10.00', '1G4', '3', '0', 'Luso Cars'),
(422, 'Fitting 1/2 Recto Oring', '0.70', '49.00', '1H4', '3', '0', 'Luso Cars'),
(423, 'Fitting 1/2 Recto Flare', '0.66', '6.00', '1I4', '3', '0', 'Luso Cars'),
(424, 'Fitting 1/2 Curvo Flare y Semi Curvo', '0.90', '13.00', '1E5', '3', '0', 'Luso Cars'),
(425, 'Fitting Rosca 1/2 A 5/8 Flare', '1', '2.00', '1F5', '2', '0', 'Carfloca'),
(426, 'Fitting 5/8 Recto Oring', '0.90', '5.00', '1G5', '3', '0', 'Luso Cars');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` text NOT NULL,
  `ubicacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `telefono`, `correo`, `ubicacion`) VALUES
(8, 'Luso Cars', '0412-4842969', '', 'Carrera 15 entre 52 y 53, Barquisimeto'),
(9, 'Ruizar', '04146667541', 'ruizarca2012@gmail.com', 'Maracaibo'),
(10, 'Infra Parts', '04125342693', 'inversionesfranco22@gmail.com', 'Maracaibo'),
(11, 'Airca', '04146079058', 'airca@cantv.net', 'Maracaibo'),
(12, 'Frio K29', '04144068580', 'friok29bqto@gmail.com', 'Av Venezuela, calle 19, Barquisimeto'),
(13, 'C. Hernandez', '', '', 'Barquisimeto'),
(14, 'L. Freitez', '04265513538', '', 'Barquisimeto'),
(15, 'Frezze', '', '', ''),
(16, 'Carfloca', '02512320462', 'Larfloca@outlook.com', 'Calle 33 entre 32 y 33, Barquisimeto'),
(17, 'Nevada', '04127303189', '', 'Caracas, Distrito Capital'),
(18, 'TYC', '', '', 'Maracaibo'),
(19, 'Rodifilter', '04144070261', 'prodifilter@hotmail.com', 'Valencia'),
(20, 'Rober', '', '', 'Barquisimeto'),
(21, 'Sulvaran', '', '', 'Calle 42 entre 30 y 31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`) VALUES
(1, 'Jose Perez', 'perezsanchezjoseandres64@gmail.com', '12345678'),
(4, 'Jose Alfredo', 'josealfredogil68@gmail.com', '9767040*'),
(5, 'Tito', 'gajeliz@gmail.com', '*gabo24*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(400) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `total` decimal(60,0) UNSIGNED NOT NULL,
  `total_bs` decimal(60,0) NOT NULL,
  `forma_pago` enum('Efectivo','Transferencia','Punto','Efectivo Bs') DEFAULT NULL,
  `trans_refe` varchar(100) NOT NULL,
  `estado` enum('pagado','pendiente','cancelada','devolucion') NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cerrado` tinyint(4) DEFAULT '0',
  `carrito_id` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `nombre`, `cantidad`, `total`, `total_bs`, `forma_pago`, `trans_refe`, `estado`, `fecha`, `cerrado`, `carrito_id`) VALUES
(1, 'Valvula Expansion Super Duty', '1.00', '15', '9000', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_69656182e402e3.31444503'),
(2, 'Bombona Gas R134a', '0.50', '10', '5000', 'Transferencia', '8073', '', '2026-01-12 17:48:40', 1, 'carrito_696561f1aab851.14012883'),
(3, 'Aceite Emkaroil Pag 150', '1.00', '7', '4000', 'Transferencia', '8073', '', '2026-01-12 17:48:40', 1, 'carrito_696561f1aab851.14012883'),
(4, 'Empacadura V5', '1.00', '5', '2750', 'Transferencia', '8073', '', '2026-01-12 17:48:40', 1, 'carrito_696561f1aab851.14012883'),
(5, 'Bombona Gas R134a', '0.50', '10', '5000', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_6965627aa166f8.59913836'),
(6, ' Gas R134a', '0.50', '10', '5000', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_696563a151c6d6.35040790'),
(7, 'Ferruler 1/2', '2.00', '2', '1100', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_69656aa4a24443.47949004'),
(8, 'Fitting Union 1/2', '1.00', '2', '1100', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_69656aa4a24443.47949004'),
(9, 'Manguera 1/2', '0.40', '6', '3300', 'Punto', '', '', '2026-01-12 17:48:40', 1, 'carrito_69656aa4a24443.47949004'),
(10, 'Ferruler 5/16', '1.00', '1', '400', 'Punto', '', '', '2026-01-20 14:57:37', 1, 'carrito_696f8a5f8bf361.59383870'),
(11, 'Evaporador Mitsubishi Lancer 94-02', '1.00', '60', '30000', 'Transferencia', '0412', '', '2026-01-21 17:37:58', 1, 'carrito_69711a1d4b77a9.31396880'),
(12, 'Evaporador Universal 5 Rejillas 12V (Ambulancia)', '1.00', '150', '0', 'Efectivo', '', '', '2026-02-02 13:48:56', 0, 'carrito_6980e3889afe62.49673936');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_del_dia`
--

CREATE TABLE `ventas_del_dia` (
  `id` int(11) NOT NULL,
  `num_ventas` varchar(20) NOT NULL,
  `total_cantidad` varchar(300) NOT NULL,
  `total_dinero` varchar(20) NOT NULL,
  `efectivo` varchar(100) NOT NULL,
  `transferencia` varchar(100) NOT NULL,
  `punto` varchar(100) NOT NULL,
  `total_bs` decimal(60,0) NOT NULL,
  `transferencia_bs` decimal(60,0) NOT NULL,
  `punto_bs` decimal(60,0) NOT NULL,
  `efectivo_bs` decimal(60,0) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refe_transferencia` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas_del_dia`
--

INSERT INTO `ventas_del_dia` (`id`, `num_ventas`, `total_cantidad`, `total_dinero`, `efectivo`, `transferencia`, `punto`, `total_bs`, `transferencia_bs`, `punto_bs`, `efectivo_bs`, `fecha`, `refe_transferencia`) VALUES
(1, '5', '7.90', '67', '0', '22', '45', '36250', '11750', '24500', '0', '2026-01-12 17:48:40', '8073, 8073, 8073'),
(2, '1', '1.00', '1', '0', '0', '1', '400', '0', '400', '0', '2026-01-20 14:57:36', ''),
(3, '1', '1.00', '60', '0', '60', '0', '30000', '30000', '0', '0', '2026-01-21 17:37:58', '0412');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_del_dia`
--
ALTER TABLE `ventas_del_dia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ventas_del_dia`
--
ALTER TABLE `ventas_del_dia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
