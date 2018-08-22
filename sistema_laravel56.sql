-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2018 a las 16:34:41
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_laravel56`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcategoria` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `idcategoria`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 1, '75428121', 'Gaseosa CocaCola 3Lts', '7.50', 50, 'Gaseosa CocaCola 3Lts light', 1, '2018-05-01 11:01:18', '2018-05-01 11:01:18'),
(2, 2, 'm721231', 'escritorio de oficina', '150.00', 0, 'escritorio de oficina negro', 1, '2018-05-01 11:02:11', '2018-06-20 01:10:40'),
(3, 1, 'b111', 'Gaseosa Inka KOla 3Lts', '5.50', 0, NULL, 1, '2018-05-01 11:02:48', '2018-06-22 03:13:51'),
(4, 1, '111111', 'celular', '300.00', 1, NULL, 1, '2018-05-03 12:48:58', '2018-06-22 03:13:59'),
(5, 2, '1122', 'silla giratoria', '180.00', 0, NULL, 1, '2018-05-03 12:51:19', '2018-06-19 23:37:50'),
(6, 4, '112233', 'leche gloria', '3.40', 0, 'leche gloria azul', 1, '2018-06-19 23:33:56', '2018-06-20 01:48:55'),
(7, 4, '112231', 'yogurt', '3.50', 2, NULL, 1, '2018-06-19 23:37:04', '2018-06-19 23:49:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 'Bebidas', NULL, 1, '2018-05-01 11:00:04', '2018-06-22 03:14:17'),
(2, 'Muebles', 'Todo tipo de muebles', 1, '2018-05-01 11:00:17', '2018-05-01 11:10:19'),
(3, 'pantallas', 'todas las pantallas', 1, '2018-06-18 18:20:40', '2018-06-18 18:31:48'),
(4, 'lacteos', NULL, 1, '2018-06-19 23:29:59', '2018-06-19 23:29:59'),
(5, 'cereal', NULL, 1, '2018-06-19 23:40:37', '2018-06-19 23:40:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingresos`
--

CREATE TABLE `detalle_ingresos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idingreso` int(10) UNSIGNED NOT NULL,
  `idarticulo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ingresos`
--

INSERT INTO `detalle_ingresos` (`id`, `idingreso`, `idarticulo`, `cantidad`, `precio`) VALUES
(4, 3, 3, 50, '5.00'),
(5, 3, 2, 50, '155.00'),
(6, 3, 1, 50, '5.00'),
(7, 4, 2, 50, '10.00'),
(8, 5, 2, 50, '4.00'),
(9, 6, 2, 1, '1.00'),
(10, 7, 2, 9, '3.00'),
(11, 8, 2, 40, '140.00'),
(66, 36, 3, 10, '7.00'),
(67, 36, 2, 10, '150.00'),
(68, 36, 1, 10, '7.50'),
(69, 37, 1, 1, '7.50'),
(70, 38, 5, 1, '180.00'),
(92, 60, 5, 1, '180.00'),
(93, 61, 5, 1, '1.00'),
(94, 62, 5, 1, '180.00'),
(95, 63, 5, 1, '180.00'),
(96, 64, 5, 1, '1802.00'),
(97, 65, 5, 1, '180.00'),
(98, 66, 5, 1, '180.00'),
(99, 67, 5, 1, '180.00'),
(100, 68, 5, 1, '180.00'),
(137, 105, 4, 1, '1.00'),
(138, 106, 3, 1, '3.00'),
(139, 107, 5, 1, '1.00'),
(180, 148, 5, 1, '1.00'),
(181, 149, 4, 1, '250.00');

--
-- Disparadores `detalle_ingresos`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_ingresos` FOR EACH ROW BEGIN
	UPDATE articulos SET stock = stock + NEW.cantidad
	WHERE articulos.id = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idarticulo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `idventa`, `idarticulo`, `cantidad`, `precio`, `descuento`) VALUES
(1, 1, 2, 10, '4.00', '0.00'),
(2, 2, 4, 1, '300.00', '0.00'),
(3, 3, 2, 1, '150.00', '0.00'),
(4, 6, 2, 150, '150.00', '0.00'),
(5, 7, 2, 1, '150.00', '30.00'),
(6, 8, 2, 1, '150.00', '0.00'),
(7, 9, 4, 1, '300.00', '20.00'),
(8, 9, 2, 1, '150.00', '0.00'),
(9, 10, 2, 1, '150.00', '0.00'),
(10, 11, 2, 2, '150.00', '0.00'),
(11, 12, 1, 2, '7.50', '0.00'),
(12, 12, 4, 1, '300.00', '0.00'),
(13, 12, 2, 1, '150.00', '0.00'),
(14, 13, 4, 1, '300.00', '0.00'),
(15, 14, 4, 1, '300.00', '0.00'),
(16, 14, 2, 1, '150.00', '0.00'),
(17, 14, 1, 1, '7.50', '0.00'),
(18, 15, 4, 1, '300.00', '0.00'),
(19, 16, 2, 1, '150.00', '0.00'),
(20, 17, 1, 1, '7.50', '0.00'),
(21, 18, 5, 1, '180.00', '0.00'),
(22, 19, 5, 1, '180.00', '0.00'),
(23, 20, 5, 1, '180.00', '0.00'),
(24, 21, 5, 1, '180.00', '0.00'),
(25, 22, 5, 1, '180.00', '0.00'),
(26, 23, 5, 2, '180.00', '0.00'),
(27, 24, 6, 1, '3.40', '0.00'),
(28, 25, 1, 26, '7.50', '2.12'),
(29, 25, 2, 12, '150.00', '9.50'),
(30, 26, 3, 1, '5.50', '0.00'),
(31, 26, 2, 2, '150.00', '0.00'),
(32, 26, 1, 6, '7.50', '0.00');

--
-- Disparadores `detalle_ventas`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_ventas` FOR EACH ROW BEGIN
	UPDATE articulos SET stock = stock - NEW.cantidad
	WHERE articulos.id = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproveedor` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'BOLETA', '001', '0001', '2018-05-02 00:00:00', '0.18', '8250.00', 'Registrado', '2018-05-02 20:52:35', '2018-05-02 20:52:35'),
(4, 5, 1, 'BOLETA', '001', '0002', '2018-05-02 00:00:00', '0.18', '500.00', 'Anulado', '2018-05-02 20:56:50', '2018-05-02 21:55:19'),
(5, 2, 1, 'FACTURA', '002', '0001', '2018-05-02 00:00:00', '0.18', '200.00', 'Anulado', '2018-05-02 20:57:39', '2018-05-02 21:39:30'),
(6, 5, 1, 'BOLETA', '001', '0004', '2018-05-02 00:00:00', '0.18', '1.00', 'Anulado', '2018-05-02 21:01:09', '2018-05-02 21:33:41'),
(7, 2, 1, 'BOLETA', '001', '0005', '2018-05-02 00:00:00', '0.18', '27.00', 'Anulado', '2018-05-02 21:01:45', '2018-05-02 21:29:39'),
(8, 5, 1, 'BOLETA', '001', '00010', '2018-05-02 00:00:00', '0.18', '5600.00', 'Anulado', '2018-05-02 21:58:50', '2018-05-02 22:05:03'),
(36, 5, 1, 'FACTURA', '002', '0006', '2018-06-14 00:00:00', '0.00', '1645.00', 'Registrado', '2018-06-15 01:01:39', '2018-06-15 01:01:39'),
(37, 6, 1, 'FACTURA', '002', '0007', '2018-06-18 00:00:00', '0.18', '7.50', 'Registrado', '2018-06-19 03:23:32', '2018-06-19 03:23:32'),
(38, 2, 1, 'FACTURA', '002', '0008', '2018-06-19 00:00:00', '0.00', '180.00', 'Registrado', '2018-06-19 15:32:35', '2018-06-19 15:32:35'),
(60, 11, 1, 'FACTURA', '002', '0009', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 17:06:22', '2018-06-19 17:06:22'),
(61, 11, 1, 'FACTURA', '002', '0010', '2018-06-19 00:00:00', '0.18', '1.00', 'Registrado', '2018-06-19 17:11:14', '2018-06-19 17:11:14'),
(62, 5, 1, 'FACTURA', '002', '00011', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 17:19:14', '2018-06-19 17:19:14'),
(63, 9, 1, 'FACTURA', '002', '00012', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 17:26:56', '2018-06-19 17:26:56'),
(64, 5, 1, 'BOLETA', '001', '00013', '2018-06-19 00:00:00', '0.18', '1802.00', 'Registrado', '2018-06-19 18:36:24', '2018-06-19 18:36:24'),
(65, 2, 1, 'BOLETA', '001', '00014', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 22:08:31', '2018-06-19 22:08:31'),
(66, 9, 1, 'BOLETA', '001', '00015', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 23:23:03', '2018-06-20 00:00:20'),
(67, 12, 1, 'FACTURA', '002', '00016', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 23:58:05', '2018-06-19 23:58:05'),
(68, 6, 1, 'FACTURA', '002', '00017', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-20 00:02:36', '2018-06-20 00:02:49'),
(105, 10, 1, 'FACTURA', '002', '00017', '2018-06-19 00:00:00', '0.18', '1.00', 'Anulado', '2018-06-20 01:51:42', '2018-06-20 01:52:50'),
(106, 10, 1, 'BOLETA', '001', '00018', '2018-06-19 00:00:00', '0.18', '3.00', 'Registrado', '2018-06-20 01:52:18', '2018-06-20 01:52:18'),
(107, 10, 1, 'FACTURA', '002', '00017', '2018-06-19 00:00:00', '0.18', '1.00', 'Anulado', '2018-06-20 01:55:56', '2018-06-20 01:58:17'),
(148, 9, 1, 'FACTURA', '002', '00019', '2018-06-19 00:00:00', '0.18', '1.00', 'Registrado', '2018-06-20 02:01:32', '2018-06-20 02:01:32'),
(149, 5, 1, 'FACTURA', '002', '00020', '2018-06-21 00:00:00', '0.00', '250.00', 'Registrado', '2018-06-22 03:42:00', '2018-06-22 03:42:00');

--
-- Disparadores `ingresos`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngresoAnular` AFTER UPDATE ON `ingresos` FOR EACH ROW BEGIN
	UPDATE articulos a
	JOIN detalle_ingresos di
	ON di.idarticulo = a.id
	AND di.idingreso = new.id
	set a.stock = a.stock - di.cantidad;	
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_04_27_145254_create_categorias_table', 1),
(3, '2018_04_28_174727_create_articulos_table', 1),
(4, '2018_04_29_044032_create_personas_table', 1),
(5, '2018_04_29_144510_create_proveedores_table', 1),
(6, '2018_04_29_174343_create_roles_table', 1),
(7, '2018_04_30_000000_create_users_table', 1),
(8, '2018_05_01_034656_create_ingresos_table', 1),
(9, '2018_05_01_034738_create_detalle_ingresos_table', 1),
(10, '2018_05_02_221438_create_ventas_table', 2),
(11, '2018_05_02_221652_create_detalle_ventas_table', 2),
(12, '2018_06_22_002147_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Junior Campos', 'DNI', '72125391', NULL, '935910409', 'slayerderk@gmail.com', NULL, NULL),
(2, 'Tranportes Felipe SAC', 'RUC', '20456231760', 'Av. dos de mayo', '519894', 'felipe@gmial.com', '2018-05-01 11:12:07', '2018-05-01 11:12:07'),
(3, 'Roberto Rosales Timoteo', 'DNI', '74589612', 'Jr. Amazons N° 1544', '987654321', 'roberto@gmail.com', '2018-05-01 11:27:22', '2018-06-20 00:25:47'),
(4, 'Juliio', 'DNI', '321', NULL, NULL, NULL, '2018-05-01 11:27:48', '2018-05-01 11:27:48'),
(5, 'Distribuidora Hco SCRL', 'RUC', '20333333330', 'asd', '3213', 'asd@gmail.com', '2018-05-02 04:34:59', '2018-05-02 04:34:59'),
(6, 'SSTIC', 'RUC', '20123466778', 'jr abc', '514545', 'sstic@gmail.com', '2018-06-10 05:40:35', '2018-06-18 18:36:26'),
(7, 'asd', 'DNI', '11111111', 'asd', '99999998', NULL, '2018-06-10 06:17:55', '2018-06-19 23:43:33'),
(8, 'saul', 'DNI', NULL, NULL, NULL, NULL, '2018-06-17 16:41:42', '2018-06-17 16:41:42'),
(9, 'super mix', 'RUC', '201231234', 'tarapaca', '123', 'supermiz@gmial.com', '2018-06-18 19:51:41', '2018-06-18 19:51:41'),
(10, 'wanuco mix', 'RUC', '20456546456', 'ahi', NULL, NULL, '2018-06-18 19:55:56', '2018-06-18 19:55:56'),
(11, 'felix', 'RUC', '202020', 'sad', NULL, 'felix@hotmail.com', '2018-06-18 19:56:43', '2018-06-20 00:04:58'),
(12, 'anita sac', 'RUC', '10123456780', 'jr leoncio prado', '515151', NULL, '2018-06-19 23:53:58', '2018-06-19 23:55:14'),
(13, 'lucero campos', 'DNI', '72125392', NULL, NULL, NULL, '2018-06-20 00:05:40', '2018-06-22 03:15:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `contacto`, `telefono_contacto`) VALUES
(2, 'Felipe Ordoñes', '999999999'),
(5, 'Romel', '123456789'),
(6, 'contactoSstic', '96321456'),
(9, 'ing javier', '9876543210'),
(10, 'roberto', '987987987'),
(11, NULL, NULL),
(12, 'anita gonzales', '987987987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Administrador', 'Administradores de área', 1),
(2, 'Vendedor', 'Vendedor área venta', 1),
(3, 'Almacenero', 'Almacenero área compras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `idrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `condicion`, `idrol`, `remember_token`) VALUES
(8, 'administrador', '$2y$10$QeL5I2T0lry0i5i6RIUWGuwlt3VcaO9Uw8G5A1J5F54Yz87o.HAki', 1, 1, 'DQcI14oLdwTQ8aSPdzvuT2WgXsm83tQvEMoQ2Zk9Vq7LNIB1Co7lUHpS7RsV'),
(4, 'almacenero', '$2y$10$Mq2QjSu0ILBbHGF84tDyYOCXfoTwHzgRBHRDZpq7mB7/deE/lZEdq', 1, 3, '8mkUXt7FrpFGQzyiG7RYGoqNvO1Q8KzmNEyjCSbQ9XLM4n7TzotnEQF6lh1G'),
(7, 'asd', '$2y$10$rWpAAKLnZ2.BHDvke1dc4udHlJKfW7tTgMTidVeBXkj3iP5o/ExnO', 0, 3, 'dzosVa5TcoSFC33W2XBdPc72FuUEpXdk5SQirNLFMtxOXKCB7pAFKe9WoIwX'),
(1, 'slayerderk', '$2y$10$HzQ8Z1TCmFi3kK.AtpAi5eIyxZE6pbFdN99YpumM6ylOvgpefm2mu', 1, 1, 'nsLf0EBywVFcveyv3ONCh7hfPDob91kFsTz4h3HjW8X4l6rhlA8wWlIbZ3V5'),
(3, 'vendedor', '$2y$10$m98AgbmC4Xz3dugc4HY3YeT/OPxf3Ew7vzbMmInXeeiLLUKagl7u6', 1, 2, 'IpnYn7Q6JwlhreCZmh20wTwDE1SXuBVeBXIXeZfDiTd7CIVltL0nTg5t6WyD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcliente` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'BOLETA', '001', '0001', '2018-05-02 01:00:00', '0.18', '100.00', 'Anulado', NULL, '2018-06-18 18:29:26'),
(2, 3, 1, 'BOLETA', '001', '002', '2018-05-03 00:00:00', '0.15', '300.00', 'Anulado', '2018-05-03 21:42:02', '2018-05-08 05:28:37'),
(3, 3, 1, 'BOLETA', '001', '0003', '2018-05-03 00:00:00', '0.18', '150.00', 'Anulado', '2018-05-03 22:25:01', '2018-05-08 05:27:35'),
(6, 3, 1, 'BOLETA', '001', '0004', '2018-05-03 00:00:00', '0.18', '22500.00', 'Registrado', '2018-05-03 22:27:53', '2018-05-03 22:27:53'),
(7, 4, 1, 'BOLETA', '001', '0005', '2018-05-03 00:00:00', '0.18', '120.00', 'Registrado', '2018-05-03 22:55:31', '2018-05-03 22:55:31'),
(8, 5, 1, 'FACTURA', '001', '0001', '2018-05-08 00:00:00', '0.00', '150.00', 'Anulado', '2018-05-09 00:35:03', '2018-06-17 17:34:24'),
(9, 2, 1, 'FACTURA', '001', '0002', '2018-05-08 00:00:00', '0.00', '430.00', 'Registrado', '2018-05-09 00:49:16', '2018-05-09 00:49:16'),
(10, 5, 1, 'FACTURA', '001', '0003', '2018-05-08 00:00:00', '0.00', '150.00', 'Registrado', '2018-05-09 00:50:14', '2018-05-09 00:50:14'),
(11, 5, 1, 'BOLETA', '001', '0004', '2018-05-08 00:00:00', '0.00', '300.00', 'Anulado', '2018-05-09 00:52:49', '2018-06-17 17:34:12'),
(12, 1, 1, 'BOLETA', '001', '0005', '2018-05-08 00:00:00', '0.18', '465.00', 'Anulado', '2018-05-09 00:55:04', '2018-05-09 01:00:45'),
(13, 1, 1, 'BOLETA', '001', '0006', '2018-05-08 00:00:00', '0.00', '300.00', 'Registrado', '2018-05-09 00:58:28', '2018-05-09 00:58:28'),
(14, 1, 1, 'BOLETA', '001', '0007', '2018-05-08 00:00:00', '0.00', '457.50', 'Registrado', '2018-05-09 01:01:14', '2018-05-09 01:01:14'),
(15, 3, 1, 'FACTURA', '001', '0005', '2018-05-08 00:00:00', '0.18', '300.00', 'Registrado', '2018-05-09 01:02:49', '2018-05-09 01:02:49'),
(16, 2, 1, 'FACTURA', '001', '0006', '2018-05-08 00:00:00', '0.18', '150.00', 'Anulado', '2018-05-09 01:03:26', '2018-06-18 18:27:06'),
(17, 5, 1, 'FACTURA', '001', '0007', '2018-05-08 00:00:00', '0.00', '7.50', 'Anulado', '2018-05-09 01:13:20', '2018-06-17 18:03:52'),
(18, 3, 1, 'BOLETA', '001', '0008', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-19 17:20:06', '2018-06-19 17:20:06'),
(19, 8, 1, 'BOLETA', '001', '0009', '2018-06-19 00:00:00', '0.18', '180.00', 'Anulado', '2018-06-19 17:28:48', '2018-06-20 00:12:51'),
(20, 13, 1, 'BOLETA', '001', '00010', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-20 00:08:32', '2018-06-20 00:08:32'),
(21, 2, 1, 'FACTURA', '002', '00011', '2018-06-19 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-20 00:30:17', '2018-06-20 00:30:17'),
(22, 12, 1, 'FACTURA', '002', '00012', '2018-06-20 00:00:00', '0.18', '180.00', 'Registrado', '2018-06-20 06:48:23', '2018-06-20 06:48:23'),
(23, 13, 1, 'BOLETA', '001', '00013', '2018-06-20 00:00:00', '0.18', '360.00', 'Registrado', '2018-06-20 06:58:21', '2018-06-20 06:58:21'),
(24, 2, 1, 'BOLETA', '001', '00014', '2018-06-20 00:00:00', '0.18', '3.40', 'Registrado', '2018-06-20 07:05:48', '2018-06-20 07:05:48'),
(25, 4, 1, 'BOLETA', '001', '00015', '2018-06-21 00:00:00', '0.18', '1983.38', 'Registrado', '2018-06-22 03:40:02', '2018-06-22 03:40:02'),
(26, 7, 1, 'BOLETA', '001', '00016', '2018-06-21 00:00:00', '0.18', '350.50', 'Registrado', '2018-06-22 03:57:49', '2018-06-22 03:57:49');

--
-- Disparadores `ventas`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVentaAnular` AFTER UPDATE ON `ventas` FOR EACH ROW BEGIN
	UPDATE articulos a
	JOIN detalle_ventas dv
	ON dv.idarticulo = a.id
	AND dv.idventa = new.id
	set a.stock = a.stock + dv.cantidad;	
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articulos_nombre_unique` (`nombre`),
  ADD KEY `articulos_idcategoria_foreign` (`idcategoria`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ingresos`
--
ALTER TABLE `detalle_ingresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ingresos_idingreso_foreign` (`idingreso`),
  ADD KEY `detalle_ingresos_idarticulo_foreign` (`idarticulo`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ventas_idventa_foreign` (`idventa`),
  ADD KEY `detalle_ventas_idarticulo_foreign` (`idarticulo`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingresos_idproveedor_foreign` (`idproveedor`),
  ADD KEY `ingresos_idusuario_foreign` (`idusuario`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personas_nombre_unique` (`nombre`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD KEY `proveedores_id_foreign` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`),
  ADD KEY `users_id_foreign` (`id`),
  ADD KEY `users_idrol_foreign` (`idrol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_idcliente_foreign` (`idcliente`),
  ADD KEY `ventas_idusuario_foreign` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_ingresos`
--
ALTER TABLE `detalle_ingresos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_idcategoria_foreign` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `detalle_ingresos`
--
ALTER TABLE `detalle_ingresos`
  ADD CONSTRAINT `detalle_ingresos_idarticulo_foreign` FOREIGN KEY (`idarticulo`) REFERENCES `articulos` (`id`),
  ADD CONSTRAINT `detalle_ingresos_idingreso_foreign` FOREIGN KEY (`idingreso`) REFERENCES `ingresos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_idarticulo_foreign` FOREIGN KEY (`idarticulo`) REFERENCES `articulos` (`id`),
  ADD CONSTRAINT `detalle_ventas_idventa_foreign` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_idproveedor_foreign` FOREIGN KEY (`idproveedor`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `ingresos_idusuario_foreign` FOREIGN KEY (`idusuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_id_foreign` FOREIGN KEY (`id`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_foreign` FOREIGN KEY (`id`) REFERENCES `personas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_idrol_foreign` FOREIGN KEY (`idrol`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_idcliente_foreign` FOREIGN KEY (`idcliente`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `ventas_idusuario_foreign` FOREIGN KEY (`idusuario`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
