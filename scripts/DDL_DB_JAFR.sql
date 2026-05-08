
CREATE TABLE Empresa (
   id_empresa INT PRIMARY KEY AUTO_INCREMENT,
   nombre_empresa VARCHAR(100) NOT NULL,  
   cod_registro_usuario_vendedor VARCHAR(10) 
);

CREATE TABLE Roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT, 
    nombre_rol VARCHAR(30) NOT NULL 
);

CREATE TABLE Usuarios(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa_usuario INT NOT NULL,
    alias_usuario VARCHAR(20) NOT NULL UNIQUE,
    telefono_usuario VARCHAR(10) NOT NULL UNIQUE,
    correo_usuario VARCHAR(100) NOT NULL UNIQUE,
    primer_nombre_usuario VARCHAR(30) NOT NULL,
    segundo_nombre_usuario VARCHAR(30),
    primer_apellido_usuario VARCHAR(30) NOT NULL,
    segundo_apellido_usuario VARCHAR(30),
    contrasena_usuario VARCHAR(100) NOT NULL,
    id_rol_usuario INT NOT NULL,

    FOREIGN KEY (id_empresa_usuario) REFERENCES Empresa(id_empresa),
    FOREIGN KEY (id_rol_usuario) REFERENCES Roles(id_rol)
);

CREATE TABLE Rutas(
    id_ruta INT PRIMARY KEY AUTO_INCREMENT,
    nombre_ruta VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_negocio_cliente VARCHAR(150) NOT NULL UNIQUE,
    primer_nombre_contacto_cliente VARCHAR(30) NOT NULL,
    segundo_nombre_contacto_cliente VARCHAR(30),
    primer_apellido_contacto_cliente VARCHAR(30) NOT NULL,
    segundo_apellido_contacto_cliente VARCHAR(30),
    telefono_contacto_cliente VARCHAR(10) NOT NULL UNIQUE,
    direccion_cliente VARCHAR(150) NOT NULL,
    correo_cliente  VARCHAR(100) NOT NULL UNIQUE,
    id_ruta_cliente INT NOT NULL,

    FOREIGN KEY (id_ruta_cliente) REFERENCES Rutas(id_ruta)

);

CREATE TABLE Proveedores(
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_comercial_proveedor VARCHAR(150) NOT NULL UNIQUE,
    primer_nombre_contacto_proveedor VARCHAR(30) NOT NULL,
    segundo_nombre_contacto_proveedor VARCHAR(30),
    primer_apellido_contacto_proveedor VARCHAR(30) NOT NULL,
    segundo_apellido_contacto_proveedor VARCHAR(30),
    telefono_contacto_proveedor VARCHAR(10) NOT NULL UNIQUE,
    direccion_proveedor VARCHAR(150) NOT NULL,
    correo_proveedor VARCHAR(100) NOT NULL UNIQUE,
    horario_atencion_proveedor VARCHAR(100) NOT NULL
);

CREATE TABLE Tipos_productos(
    id_tipo_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_producto VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Productos(
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(50) NOT NULL UNIQUE,
    precio_compra_producto DECIMAL(10, 2) NOT NULL,
    precio_venta_producto DECIMAL(10, 2) NOT NULL,
    cant_min_stock_producto INT(4) NOT NULL,
    cant_stock_producto INT(4) NOT NULL,
    id_tipo_producto_producto INT NOT NULL,
    id_proveedor_producto INT NOT NULL,

    FOREIGN KEY (id_tipo_producto_producto) REFERENCES Tipos_productos(id_tipo_producto),
    FOREIGN KEY (id_proveedor_producto) REFERENCES Proveedores(id_proveedor)
);

CREATE TABLE Compras (
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    fecha_hora_compra DATETIME NOT NULL,
    total_compra DECIMAL(10, 2) NOT NULL,
    link_factura_documento_compra VARCHAR(255) UNIQUE,
    id_proveedor_compra INT NOT NULL,
    id_usuario_compra INT NOT NULL,

    FOREIGN KEY (id_proveedor_compra) REFERENCES Proveedores(id_proveedor),
    FOREIGN KEY (id_usuario_compra) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Detalle_de_compras(
    id_detalle_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_compra_detalle_compra INT NOT NULL,
    id_producto_detalle_compra INT NOT NULL,
    cantidad_producto_detalle_compra INT(4) NOT NULL,
    precio_unitario_producto_detalle_compra DECIMAL(10, 2) NOT NULL,
    precio_total_producto_detalle_compra DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (id_compra_detalle_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_producto_detalle_compra) REFERENCES Productos(id_producto)
);

CREATE TABLE Ventas(
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    fecha_hora_venta DATETIME NOT NULL,
    total_venta DECIMAL(10, 2) NOT NULL, 
    id_cliente_venta INT NOT NULL,
    id_usuario_venta INT NOT NULL,

    FOREIGN KEY (id_cliente_venta) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_usuario_venta) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Detalle_de_ventas(
    id_detalle_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_venta_detalle_venta INT NOT NULL,
    id_producto_detalle_venta INT NOT NULL,
    cantidad_producto_detalle_venta INT(4) NOT NULL,
    precio_unitario_producto_detalle_venta DECIMAL(10, 2) NOT NULL,
    precio_total_producto_detalle_venta DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (id_venta_detalle_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto_detalle_venta) REFERENCES Productos(id_producto)
);