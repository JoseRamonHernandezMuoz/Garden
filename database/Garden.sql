-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2021 a las 02:02:06
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `garden`
--
CREATE DATABASE IF NOT EXISTS `garden` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `garden`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(1, 'JosÃ© RamÃ³n HernÃ¡ndez MuÃ±oz', 'josehernandez@gmail.com', 'Hola', ''),
(2, 'Juan Perez', 'juan@gmail.com', 'Visita', ''),
(3, 'juan', 'juan@juan.juan', 'juan', ''),
(4, 'Fernando', 'Fernando321@gmail.com', 'InformaciÃ³n de Buganvilla', ''),
(5, 'Jesus', 'jesus87545@hotmail.com', 'Entrega a domicilio', '11-15-2021 03:59:19 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flowers`
--

CREATE TABLE `flowers` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `informacion` varchar(260) NOT NULL,
  `descripcion1` varchar(50) NOT NULL,
  `descripcion2` varchar(50) NOT NULL,
  `descripcion3` varchar(50) NOT NULL,
  `descripcion4` varchar(200) NOT NULL,
  `descripcion5` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flowers`
--

INSERT INTO `flowers` (`id`, `nombre`, `informacion`, `descripcion1`, `descripcion2`, `descripcion3`, `descripcion4`, `descripcion5`, `imagen`, `precio`) VALUES
(10, 'BUGANVILLA ', 'Una de nuestras plantas favoritas del verano es la buganvilla. La intensidad del color de sus flores rosas o violetas, unido al hecho de que se trata de una planta trepadora que adora el sol, hacen de la buganvilla el complemento perfecto de porches y terrazas', 'Si', 'No', '8 metros ', 'Verano ', 'No tolera el frio ', '<img src=./img/imagePlantas/buganvilla.jpg>', 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', '123123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flowers`
--
ALTER TABLE `flowers`
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
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-16 01:01:16', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ropa`
--
CREATE DATABASE IF NOT EXISTS `ropa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ropa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `username` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`username`, `nombre`, `apellido`, `edad`, `email`, `telefono`, `domicilio`) VALUES
('FernandoMartinez36', 'Fernando', 'Martinez', 36, 'fernandoMartinez@gmail.com', '247896547', 'Centro, Tlaxcala'),
('mariana22', 'Mariana', 'Hdz', 22, 'mariana_@gmail.com', '24112356', 'San Luis'),
('pedroJuarez', 'Pedro', 'Juarez', 58, 'pedrojuarez@gmail.com', '84846416161', 'Tlaxcala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `correo`, `username`, `contraseña`, `telefono`, `domicilio`, `puesto`) VALUES
(2, 'Joan', 'Rubalcava Mendoza', 'joan_ru@gmail.com', 'joan_ru', 'joan_ru', '241-128-79-45', 'Av. Chapultepec s/n Tlaxcala', 'Cajera'),
(5, 'Rosa', 'Perea Robles', 'rosa_pe@gmail.com', 'rosa_pe', 'rosa_pe', '247-154-83-30', 'Calle Juarez s/n, Huamantla', 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `modelo`, `nombre`, `codigo`, `cantidad`, `correo`) VALUES
(1, 'A-200', 'Abrigo black', 137809911, 6, 'www.shyla.com'),
(2, 'A-397', 'Abrigo mallorca', 141159921, 20, 'www.shyla.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CodigoBarras` int(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `NombreProducto` varchar(100) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CodigoBarras`, `modelo`, `NombreProducto`, `talla`, `precio`, `cantidad`, `imagen`) VALUES
(124500, 'J-756', 'Jeans roto azul', '3', 250, 15, '<img src=./assets/images/Jeans_roto_azul.jpg>'),
(459501, 'J-756', 'Jeans roto azul', '5', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(794502, 'J-756', 'Jeans roto azul', '7', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(1129503, 'J-756', 'Jeans roto azul', '9', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(1464504, 'J-756', 'Jeans roto azul', '11', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(1799505, 'J-756', 'Jeans roto azul', '13', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(2134506, 'J-756', 'Jeans roto azul', '15', 250, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(2469507, 'J-756', 'Jeans roto azul', '1XL', 275, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(2804508, 'J-756', 'Jeans roto azul', '2XL', 275, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(3139509, 'J-756', 'Jeans roto azul', '3XL', 275, 15, '<img src=\"./assets/images/Jeans_roto_azul.jpg\">'),
(3474510, 'J-457', 'Jeans negro', '3', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(3809511, 'J-457', 'Jeans negro', '5', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(4144512, 'J-457', 'Jeans negro', '7', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(4479513, 'J-457', 'Jeans negro', '9', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(4814514, 'J-457', 'Jeans negro', '11', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(5149515, 'J-457', 'Jeans negro', '13', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(5484516, 'J-457', 'Jeans negro', '15', 300, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(5819517, 'J-457', 'Jeans negro', '1XL', 320, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(6154518, 'J-457', 'Jeans negro', '2XL', 320, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(6489519, 'J-457', 'Jeans negro', '3XL', 320, 15, '<img src=\"./assets/images/Jeans_negro.jpg\">'),
(6824520, 'J-398', 'Jeans parches', '3', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(7159521, 'J-398', 'Jeans parches', '5', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(7494522, 'J-398', 'Jeans parches', '7', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(7829523, 'J-398', 'Jeans parches', '9', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(8164524, 'J-398', 'Jeans parches', '11', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(8499525, 'J-398', 'Jeans parches', '13', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(8834526, 'J-398', 'Jeans parches', '15', 270, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(9169527, 'J-398', 'Jeans parches', '1XL', 290, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(9504528, 'J-398', 'Jeans parches', '2XL', 290, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(9839529, 'J-398', 'Jeans parches', '3XL', 320, 15, '<img src=\"./assets/images/Jeans_parches.jpg\">'),
(10174530, 'J-418', 'Jeans micaela', '3', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(10509531, 'J-418', 'Jeans micaela', '5', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(10844532, 'J-418', 'Jeans micaela', '7', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(11179533, 'J-418', 'Jeans micaela', '9', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(11514534, 'J-418', 'Jeans micaela', '11', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(11849535, 'J-418', 'Jeans micaela', '13', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(12184536, 'J-418', 'Jeans micaela', '15', 320, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(12519537, 'J-418', 'Jeans micaela', '1XL', 345, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(12854538, 'J-418', 'Jeans micaela', '2XL', 345, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(13189539, 'J-418', 'Jeans micaela', '3XL', 345, 15, '<img src=\"./assets/images/Jeans_micaela.jpg\">'),
(13524540, 'J-103', 'Jeans roto negro', '3', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(13859541, 'J-103', 'Jeans roto negro', '5', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(14194542, 'J-103', 'Jeans roto negro', '7', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(14529543, 'J-103', 'Jeans roto negro', '9', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(14864544, 'J-103', 'Jeans roto negro', '11', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(15199545, 'J-103', 'Jeans roto negro', '13', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(15534546, 'J-103', 'Jeans roto negro', '15', 260, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(15869547, 'J-103', 'Jeans roto negro', '1XL', 280, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(16204548, 'J-103', 'Jeans roto negro', '2XL', 280, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(16539549, 'J-103', 'Jeans roto negro', '3XL', 280, 15, '<img src=\"./assets/images/Jeans_roto_negro.jpg\">'),
(20224560, 'P-400', 'Pantalón negro', '3', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(20559561, 'P-400', 'Pantalón negro', '5', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(20894562, 'P-400', 'Pantalón negro', '7', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(21229563, 'P-400', 'Pantalón negro', '9', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(21564564, 'P-400', 'Pantalón negro', '11', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(21899565, 'P-400', 'Pantalón negro', '13', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(22234566, 'P-400', 'Pantalón negro', '15', 300, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(22569567, 'P-400', 'Pantalón negro', '1XL', 320, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(22904568, 'P-400', 'Pantalón negro', '2XL', 320, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(23239569, 'P-400', 'Pantalón negro', '3XL', 320, 15, '<img src=\"./assets/images/Pantalón_negro.jpg\">'),
(23574570, 'P-276', 'Pantalón gris', '3', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(23909571, 'P-276', 'Pantalón gris', '5', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(24244572, 'P-276', 'Pantalón gris', '7', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(24579573, 'P-276', 'Pantalón gris', '9', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(24914574, 'P-276', 'Pantalón gris', '11', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(25249575, 'P-276', 'Pantalón gris', '13', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(25584576, 'P-276', 'Pantalón gris', '15', 200, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(25919577, 'P-276', 'Pantalón gris', '1XL', 220, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(26254578, 'P-276', 'Pantalón gris', '2XL', 220, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(26589579, 'P-276', 'Pantalón gris', '3XL', 220, 15, '<img src=\"./assets/images/Pantalón_gris.jpg\">'),
(36974610, 'M-092', 'Mono girasoles', 'XS', 180, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(37309611, 'M-092', 'Mono girasoles', 'S', 180, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(37644612, 'M-092', 'Mono girasoles', 'M', 180, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(37979613, 'M-092', 'Mono girasoles', 'L', 180, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(38314614, 'M-092', 'Mono girasoles', 'XL', 180, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(38649615, 'M-092', 'Mono girasoles', '1XL', 200, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(38984616, 'M-092', 'Mono girasoles', '2XL', 200, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">'),
(39319617, 'M-092', 'Mono girasoles', '3XL', 200, 15, '<img src=\"./assets/images/Mono_girasoles.jpg\">');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proovedores`
--

CREATE TABLE `proovedores` (
  `codigo` int(11) NOT NULL,
  `NombreEmpresa` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proovedores`
--

INSERT INTO `proovedores` (`codigo`, `NombreEmpresa`, `correo`, `telefono`, `domicilio`) VALUES
(10023, 'ORIGINALES SHYLA, S.A. DE C.V.', 'www.shyla.com', '(52) 55 57090018', 'José Ma. Izazaga #65, Local 17, 06080 Ciudad de México, CDMX'),
(12054, 'GRUPO VANITY, S.A. DE C.V.', 'www.vanity.com.mx', '(52) 800 4802121', 'Av. Universidad #1050, General Anaya, Benito Juárez, 03330 Ciudad de México, CDMX'),
(14008, 'ROPA SIETE LEGUAS, S.A. DE C.V.', 'www.sieteleguas.com.mx', '(52) 871 748-1400', 'Calzada Tecnológico #1055, Cd. Lerdo, 35150 Ciudad Lerdo, Durango '),
(59874, 'OGGI JEANS, S.A. DE C.V.', 'www.oggi.mx', '222-232-34-79', 'Calle 2 Nte 211. Puebla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `NumeroVenta` int(11) NOT NULL,
  `CodigoBarras` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`NumeroVenta`, `CodigoBarras`, `username`, `cantidad`) VALUES
(1, '124500', 'FernandoMartinez36', 2),
(2, '459501', 'FernandoMartinez36', 2),
(3, '794502', 'FernandoMartinez36', 3),
(4, '124500', 'FernandoMartinez36', 5),
(5, '14529543', 'FernandoMartinez36', 10),
(6, '7494522', 'FernandoMartinez36', 6),
(7, '23574570', 'FernandoMartinez36', 10),
(8, '14864544', 'FernandoMartinez36', 8),
(9, '20507', 'pedroJuarez', 7),
(10, '36974610', 'mariana22', 1),
(11, '36974610', 'joan_ru_mendoza', 1),
(12, '124500', 'mariana22', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`CodigoBarras`);

--
-- Indices de la tabla `proovedores`
--
ALTER TABLE `proovedores`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`NumeroVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `NumeroVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `ventas`
--
CREATE DATABASE IF NOT EXISTS `ventas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ventas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(11) NOT NULL,
  `alitas` int(11) NOT NULL,
  `papas` int(11) NOT NULL,
  `hotcakes` int(11) NOT NULL,
  `hotdogs` int(11) NOT NULL,
  `platanos` int(11) NOT NULL,
  `micheladas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id`, `alitas`, `papas`, `hotcakes`, `hotdogs`, `platanos`, `micheladas`) VALUES
(1, 40, 15, 5, 15, 25, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `alitas` int(11) NOT NULL,
  `papas` int(11) NOT NULL,
  `hotcakes` int(11) NOT NULL,
  `hotdogs` int(11) NOT NULL,
  `platanos` int(11) NOT NULL,
  `micheladas` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `alitas`, `papas`, `hotcakes`, `hotdogs`, `platanos`, `micheladas`, `total`, `fecha`) VALUES
(25, 1, 1, 1, 0, 0, 0, 60, '09-29-2021 06:13:32 pm'),
(26, 2, 4, 4, 5, 6, 5, 685, '09-29-2021 06:19:05 pm'),
(27, 1, 5, 0, 3, 0, 0, 160, '09-30-2021 12:41:50 pm'),
(28, 1, 1, 1, 1, 1, 1, 160, '10-04-2021 06:37:41 pm'),
(29, 1, 1, 1, 1, 1, 1, 160, '10-04-2021 06:38:35 pm'),
(30, 2, 2, 2, 2, 2, 2, 320, '10-04-2021 07:34:40 pm'),
(31, 100, 100, 100, 100, 100, 100, 16000, '10-04-2021 07:36:36 pm'),
(32, 0, 1, 1, 1, 1, 1, 120, '10-04-2021 07:37:41 pm'),
(33, 5, 5, 5, 5, 5, 5, 800, '10-04-2021 07:38:21 pm'),
(34, 0, 4, 64, 64, 4, 4, 1680, '10-04-2021 07:38:30 pm'),
(35, 1, 0, 0, 1, 0, 0, 55, '10-06-2021 10:02:45 am'),
(36, 10, 10, 10, 10, 10, 10, 1600, '10-06-2021 01:22:30 pm'),
(37, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:30:10 pm'),
(38, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:30:32 pm'),
(39, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:30:41 pm'),
(40, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:31:29 pm'),
(41, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:31:44 pm'),
(42, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:32:09 pm'),
(43, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:32:54 pm'),
(44, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:33:05 pm'),
(45, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:33:13 pm'),
(46, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:33:54 pm'),
(47, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:33:56 pm'),
(48, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:34:16 pm'),
(49, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:34:41 pm'),
(50, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:34:46 pm'),
(51, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:34:49 pm'),
(52, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:35:03 pm'),
(53, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:36:50 pm'),
(54, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 01:47:49 pm'),
(55, 1, 1, 2, 1, 21, 6, 965, '10-09-2021 02:04:38 pm'),
(56, 0, 0, 0, 0, 0, 0, 0, '10-09-2021 02:08:43 pm'),
(57, 1, 1, 0, 1, 1, 0, 95, '11-04-2021 09:59:47 am'),
(58, 0, 0, 0, 0, 0, 0, 0, '11-15-2021 03:54:10 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
