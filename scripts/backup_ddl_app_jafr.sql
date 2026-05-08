-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-05-2026 a las 16:14:38
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_jafr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_negocio_cliente` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `primer_nombre_contacto_cliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_nombre_contacto_cliente` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `primer_apellido_contacto_cliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_apellido_contacto_cliente` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_contacto_cliente` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_cliente` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `correo_cliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_ruta_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `fecha_hora_compra` datetime NOT NULL,
  `total_compra` decimal(10,2) NOT NULL,
  `link_factura_documento_compra` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_proveedor_compra` int(11) NOT NULL,
  `id_usuario_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_compras`
--

CREATE TABLE `detalle_de_compras` (
  `id_detalle_compra` int(11) NOT NULL,
  `id_compra_detalle_compra` int(11) NOT NULL,
  `id_producto_detalle_compra` int(11) NOT NULL,
  `cantidad_producto_detalle_compra` int(4) NOT NULL,
  `precio_unitario_producto_detalle_compra` decimal(10,2) NOT NULL,
  `precio_total_producto_detalle_compra` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_ventas`
--

CREATE TABLE `detalle_de_ventas` (
  `id_detalle_venta` int(11) NOT NULL,
  `id_venta_detalle_venta` int(11) NOT NULL,
  `id_producto_detalle_venta` int(11) NOT NULL,
  `cantidad_producto_detalle_venta` int(4) NOT NULL,
  `precio_unitario_producto_detalle_venta` decimal(10,2) NOT NULL,
  `precio_total_producto_detalle_venta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `nombre_empresa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cod_registro_usuario_vendedor` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio_compra_producto` decimal(10,2) NOT NULL,
  `precio_venta_producto` decimal(10,2) NOT NULL,
  `cant_min_stock_producto` int(4) NOT NULL,
  `cant_stock_producto` int(4) NOT NULL,
  `id_tipo_producto_producto` int(11) NOT NULL,
  `id_proveedor_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_comercial_proveedor` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `primer_nombre_contacto_proveedor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_nombre_contacto_proveedor` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `primer_apellido_contacto_proveedor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_apellido_contacto_proveedor` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_contacto_proveedor` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_proveedor` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `correo_proveedor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `horario_atencion_proveedor` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_ruta` int(11) NOT NULL,
  `nombre_ruta` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

CREATE TABLE `tipos_productos` (
  `id_tipo_producto` int(11) NOT NULL,
  `nombre_tipo_producto` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_empresa_usuario` int(11) NOT NULL,
  `alias_usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_usuario` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `correo_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `primer_nombre_usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_nombre_usuario` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `primer_apellido_usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `segundo_apellido_usuario` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_rol_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_hora_venta` datetime NOT NULL,
  `total_venta` decimal(10,2) NOT NULL,
  `id_cliente_venta` int(11) NOT NULL,
  `id_usuario_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `nombre_negocio_cliente` (`nombre_negocio_cliente`),
  ADD UNIQUE KEY `telefono_contacto_cliente` (`telefono_contacto_cliente`),
  ADD UNIQUE KEY `correo_cliente` (`correo_cliente`),
  ADD KEY `id_ruta_cliente` (`id_ruta_cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD UNIQUE KEY `link_factura_documento_compra` (`link_factura_documento_compra`),
  ADD KEY `id_proveedor_compra` (`id_proveedor_compra`),
  ADD KEY `id_usuario_compra` (`id_usuario_compra`);

--
-- Indices de la tabla `detalle_de_compras`
--
ALTER TABLE `detalle_de_compras`
  ADD PRIMARY KEY (`id_detalle_compra`),
  ADD KEY `id_compra_detalle_compra` (`id_compra_detalle_compra`),
  ADD KEY `id_producto_detalle_compra` (`id_producto_detalle_compra`);

--
-- Indices de la tabla `detalle_de_ventas`
--
ALTER TABLE `detalle_de_ventas`
  ADD PRIMARY KEY (`id_detalle_venta`),
  ADD KEY `id_venta_detalle_venta` (`id_venta_detalle_venta`),
  ADD KEY `id_producto_detalle_venta` (`id_producto_detalle_venta`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `nombre_producto` (`nombre_producto`),
  ADD KEY `id_tipo_producto_producto` (`id_tipo_producto_producto`),
  ADD KEY `id_proveedor_producto` (`id_proveedor_producto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD UNIQUE KEY `nombre_comercial_proveedor` (`nombre_comercial_proveedor`),
  ADD UNIQUE KEY `telefono_contacto_proveedor` (`telefono_contacto_proveedor`),
  ADD UNIQUE KEY `correo_proveedor` (`correo_proveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD UNIQUE KEY `nombre_ruta` (`nombre_ruta`);

--
-- Indices de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  ADD PRIMARY KEY (`id_tipo_producto`),
  ADD UNIQUE KEY `nombre_tipo_producto` (`nombre_tipo_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `alias_usuario` (`alias_usuario`),
  ADD UNIQUE KEY `telefono_usuario` (`telefono_usuario`),
  ADD UNIQUE KEY `correo_usuario` (`correo_usuario`),
  ADD KEY `id_empresa_usuario` (`id_empresa_usuario`),
  ADD KEY `id_rol_usuario` (`id_rol_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente_venta` (`id_cliente_venta`),
  ADD KEY `id_usuario_venta` (`id_usuario_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_de_compras`
--
ALTER TABLE `detalle_de_compras`
  MODIFY `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_de_ventas`
--
ALTER TABLE `detalle_de_ventas`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  MODIFY `id_tipo_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_ruta_cliente`) REFERENCES `rutas` (`id_ruta`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor_compra`) REFERENCES `proveedores` (`id_proveedor`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_usuario_compra`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `detalle_de_compras`
--
ALTER TABLE `detalle_de_compras`
  ADD CONSTRAINT `detalle_de_compras_ibfk_1` FOREIGN KEY (`id_compra_detalle_compra`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `detalle_de_compras_ibfk_2` FOREIGN KEY (`id_producto_detalle_compra`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `detalle_de_ventas`
--
ALTER TABLE `detalle_de_ventas`
  ADD CONSTRAINT `detalle_de_ventas_ibfk_1` FOREIGN KEY (`id_venta_detalle_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_de_ventas_ibfk_2` FOREIGN KEY (`id_producto_detalle_venta`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipo_producto_producto`) REFERENCES `tipos_productos` (`id_tipo_producto`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor_producto`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_empresa_usuario`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol_usuario`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente_venta`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_usuario_venta`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
