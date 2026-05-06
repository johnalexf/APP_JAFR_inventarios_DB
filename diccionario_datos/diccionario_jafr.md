# Diccionario de Datos - Sistema JAFR

## Empresa
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_empresa | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a la empresa con tabla de usuarios | Sera solo para registrar una empresa, para la cual esta destinado el software |
| | nombre_empresa | VARCHAR(100) | NOT NULL | | Nombre comercial de la empresa | |
| | cod_registro_usuario_vendedor | VARCHAR(10) | NULL | | Código para permitir a usuarios vendedores registrarse. | Evita que el usuario administrador tenga que registrarlos. |

## Roles
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_rol | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a un rol con un usuario | Este determina que funcionalidades puede realizar. |
| | nombre_rol | VARCHAR(30) | NOT NULL | | Nombre del rol. | |

## Usuarios
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_usuario | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a un usuario con las tablas ventas y compras | Identificador único del usuario, que crea automáticamente el sistema. |
| FK | id_empresa_usuario | INT (10) | NOT NULL | | Empresa a la que pertenece el usuario | Relación con Empresa(id_empresa) |
| | alias_usuario | VARCHAR(20) | NOT NULL | Unique | Alias del usuario para iniciar sesión | |
| | telefono_usuario | VARCHAR(10) | NOT NULL | Unique | Teléfono del usuario | |
| | correo_usuario | VARCHAR(100) | NOT NULL | Unique | Correo personal o empresarial del usuario, para recuperar contraseña. | |
| | primer_nombre_usuario | VARCHAR(30) | NOT NULL | | Primer nombre del usuario | |
| | segundo_nombre_usuario | VARCHAR(30) | NULL | | Segundo nombre del usuario | |
| | primer_apellido_usuario | VARCHAR(30) | NOT NULL | | Primer apellido del usuario | |
| | segundo_apellido_usuario | VARCHAR(30) | NULL | | Segundo apellido del usuario | |
| | contraseña_usuario | VARCHAR(100) | NOT NULL | | Contraseña hasheada del usuario | |
| FK | id_rol_usuario | INT (10) | NOT NULL | | Rol asignado al usuario | Relación con Roles(id_rol) |

## Rutas
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_ruta | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar una ruta con un cliente. | Este agrupa a los clientes según la ruta asignada |
| | nombre_ruta | VARCHAR(30) | NOT NULL | | Nombre de la ruta. | |

## Clientes
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_cliente | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a un cliente con la tabla venta. | Identificador único del cliente, que crea automáticamente el sistema. |
| | nombre_negocio_cliente | VARCHAR(150) | NOT NULL | Unique | Nombre del negocio del cliente | |
| | primer_nombre_contacto_cliente | VARCHAR(30) | NOT NULL | | Primer nombre del contacto del cliente | |
| | segundo_nombre_contacto_cliente | VARCHAR(30) | NULL | | Segundo nombre del contacto del cliente | |
| | primer_apellido_contacto_cliente | VARCHAR(30) | NOT NULL | | Primer apellido del contacto del cliente | |
| | segundo_apellido_contacto_cliente | VARCHAR(30) | NULL | | Segundo apellido del contacto del cliente | |
| | telefono_contacto_cliente | VARCHAR(10) | NOT NULL | Unique | Teléfono del contacto del cliente | |
| | direccion_cliente | VARCHAR(150) | NOT NULL | | Dirección de la ubicación del local del cliente. | |
| | correo_cliente | VARCHAR(100) | NOT NULL | Unique | Correo personal o empresarial del cliente. | |
| FK | id_ruta_cliente | INT (10) | NOT NULL | | Ruta a la que pertenece el cliente | Relación con Rutas(id_ruta) |

## Proveedores
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_proveedor | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a un proveedor con las tablas compras y productos. | Identificador único del proveedor, que crea automáticamente el sistema. |
| | nombre_comercial_proveedor | VARCHAR(150) | NOT NULL | Unique | Nombre comercial del proveedor | |
| | primer_nombre_contacto_proveedor | VARCHAR(30) | NOT NULL | | Primer nombre del contacto del proveedor | |
| | segundo_nombre_contacto_proveedor | VARCHAR(30) | NULL | | Segundo nombre del contacto del proveedor | |
| | primer_apellido_contacto_proveedor | VARCHAR(30) | NOT NULL | | Primer apellido del contacto del proveedor | |
| | segundo_apellido_contacto_proveedor | VARCHAR(30) | NULL | | Segundo apellido del contacto del proveedor | |
| | telefono_contacto_proveedor | VARCHAR(10) | NOT NULL | Unique | Teléfono del contacto del proveedor | |
| | direccion_proveedor | VARCHAR(150) | NOT NULL | | Dirección de la ubicación del local del proveedor. | |
| | correo_proveedor | VARCHAR(100) | NOT NULL | Unique | Correo personal o empresarial del proveedor. | |
| | horario_atencion_proveedor | VARCHAR(100) | NOT NULL | | Horario de atención del proveedor | |

## Tipos_productos
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_tipo_producto | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar un tipo de producto con un producto. | Este permite agrupar los productos según su tipo. |
| | nombre_tipo_producto | VARCHAR(30) | NOT NULL | Unique | Nombre del tipo de producto | |

## Productos
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_producto | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a un producto con las tablas detalle de venta y detalle de compra. | Identificador único del producto, que crea automáticamente el sistema. |
| | nombre_producto | VARCHAR(50) | NOT NULL | Unique | Nombre del producto. | |
| | precio_compra_producto | DECIMAL(10,2) | NOT NULL | | Precio al cual se compra el producto al proveedor | |
| | precio_venta_producto | DECIMAL(10,2) | NOT NULL | | Precio de venta para el cliente. | |
| | cant_min_stock_producto | INT (4) | NOT NULL | | Cantidad minima que deberia haber almacenado fisicamente. | Esta cantidad el administrador del software la asignara al crear el producto. |
| | cant_stock_producto | INT (4) | NOT NULL | | Cantidad del producto almacenada. | |
| FK | id_tipo_producto_producto | INT (10) | NOT NULL | | Tipo de producto al que pertenece el producto. | Relación con Tipos_productos(id_tipo_producto) |
| FK | id_proveedor_producto | INT (10) | NOT NULL | | Proveedor que despacha el producto. | Relación con Proveedores(id_proveedor) |

## Compras
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_compra | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a una compra con la tabla detalle de compra. | Identificador único de la compra, que crea automáticamente el sistema. |
| | fecha_hora_compra | DATETIME | NOT NULL | | Fecha y hora del registro de la compra. | Formato 'AAAA-MM-DD HH:MM:SS' |
| | total_compra | DECIMAL(10,2) | NOT NULL | | Total de la compra. | |
| | link_factura_documento_compra | VARCHAR(255) | NULL | UNIQUE | Link donde se puede consultar una copia de la factura de la compra. | |
| FK | id_proveedor_compra | INT (10) | NOT NULL | | Proveedor que entrego la compra | Relación con Proveedor(id_proveedor) |
| FK | id_usuario_compra | INT (10) | NOT NULL | | Usuario quien registro la compra en el sistema. | Relación con Usuarios(id_usuario) |

## Detalle de compras
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_detalle_compra | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar el detalle de la compra. | Identificador único del detalle de la compra, que crea automáticamente el sistema. |
| FK | id_compra_detalle_compra | INT (10) | NOT NULL | | Compra a la que pertenece el detalle de la compra | Identificador unico para separar cada detalle de compra con su respectiva compra. |
| FK | id_producto_detalle_compra | INT (10) | NOT NULL | | Producto que se relaciona en el detalle de la compra | Relación con Productos(id_producto) |
| | cantidad_producto_detalle_compra | INT (4) | NOT NULL | | Cantidad del producto comprado. | |
| | precio_unitario_producto_detalle_compra | DECIMAL(10,2) | NOT NULL | | Precio del producto. | Este valor se almacenada para tener el registro del precio del producto y no depender de cambios en el precio en la tabla productos. |
| | precio_total_producto_detalle_compra | DECIMAL(10,2) | NOT NULL | | Calculo del precio total del detalle de la compra. | Este valor se calcula y se almacena, para reducir calculos y agilizar consultas. |

## Ventas
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_venta | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar y relacionar a una venta con la tabla detalle de venta. | Identificador único de la venta, que crea automáticamente el sistema. |
| | fecha_hora_venta | DATETIME | NOT NULL | | Fecha y hora del registro de la venta. | Formato 'AAAA-MM-DD HH:MM:SS' |
| | total_venta | DECIMAL(10,2) | NOT NULL | | Total de la venta. | Este valor se calcula y se almacena, para reducir calculos y agilizar consultas. |
| FK | id_cliente_venta | INT (10) | NOT NULL | | Cliente que recibio la venta | Relación con Clientes(id_cliente) |
| FK | id_usuario_venta | INT (10) | NOT NULL | | Usuario quien registro la venta en el sistema. | Relación con Usuarios(id_usuario) |

## Detalle de ventas
| Llave | Atributo | Tipo y tamaño | Obligatorio | Restricciones adicionales | Descripción | Observaciones |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| PK | id_detalle_venta | INT (10) | NOT NULL | Autoincrement | Llave primaria para identificar el detalle de la venta. | Identificador único del detalle de la venta, que crea automáticamente el sistema. |
| FK | id_venta_detalle_venta | INT (10) | NOT NULL | | venta a la que pertenece el detalle de la venta | Identificador unico para separar cada detalle de venta con su respectiva venta. |
| FK | id_producto_detalle_venta | INT (10) | NOT NULL | | Producto que se relaciona en el detalle de la venta | Relación con Productos(id_producto) |
| | cantidad_producto_detalle_venta | INT (4) | NOT NULL | | Cantidad del producto vendido. | |
| | precio_unitario_producto_detalle_venta | DECIMAL(10,2) | NOT NULL | | Precio del producto. | Este valor se almacenada para tener el registro del precio del producto y no depender de cambios en el precio en la tabla productos. |
| | precio_total_producto_detalle_venta | DECIMAL(10,2) | NOT NULL | | Calculo del precio total del detalle de la venta. | Este valor se calcula y se almacena, para reducir calculos y agilizar consultas. |