# Descripción del Proyecto JAFR

## 1. Introducción
Actualmente, a pesar de estar cada vez más en agüe el uso de la tecnología, existen personas que aún no la aplican en su diario vivir, como en los pequeños emprendimientos donde realizan reabastecimiento de productos con proveedores y ventas de los mismos a sus clientes. Y la forma en que llevan sus cuentas del negocio se pueden considerar ya arcaicas por que el uso del papel, no es la mejor forma de tener un orden de las cuentas que puede llevar un pequeño negocio con respecto a sus productos y precios.

Este documento se hace con el fin de determinar los requerimientos funcionales y no funcionales de una aplicación que pretende solucionar la necesidad de un pequeño emprendimiento en donde se pueda manejar toda la parte administrativa, con referente a productos manejados, proveedores, clientes, inventario, ventas, etc. Permitiendo asi llevar un control de sus movimientos de mercancía, a través del almacenamiento de información y por medio de los cuales se pueden generar reportes a beneficio del negocio e incluso hacer un control de inventarios.

Se determina el alcance del proyecto, enfocado en dar solución a los requerimientos recolectados por medio de entrevista y encuestas al cliente, y así se determinan los tipos de usuarios de la aplicación que serán el administrador y el vendedor ayudante. Además, se muestra los requerimientos no funcionales, los cuales son vitales para generar un software seguro y amigable para el usuario final, recordando que una solución de software no es solo aplicar las funciones requeridas, si no también, generar una aplicación que el cliente maneje fácilmente y proteja sus datos de ataques maliciosos.

---

## 2. Alcance del Software
El alcance de la aplicación que se pretende construir es ofrecer por medio de un software para escritorio, la posibilidad de manejar la información de movimientos de productos de un negocio de venta tienda a tienda, a través del almacenamiento de:
* Entes principales que son; clientes, proveedores y productos.
* Movimientos de productos por medio de ventas y compras.
* Inventario actualizado según compras y ventas.

A parte también se espera que pueda permitir la generación de reportes de ventas, compras y cantidades a comprar. Y por último que a través de un usuario administrador se pueda gestionar los usuarios.

**Es importante aclarar que el sistema NO realizara las siguientes funciones:**
* Generación de factura electrónica.
* Gestión de pagos.
* Visualización para los tenderos de los productos disponibles.
* Gestión de pedidos.
* Comunicación con una aplicación de un tercero.

Si bien las anteriores funciones no se incluyen en el alcance del software, esta aplicación será la base para en futuras soluciones se pueda hacer el empalme y seguir creciendo en la solución.

---

## 3. Perspectiva del Producto
Este software está planeando para ofrecerle una solución de tecnología que permita a un pequeño negocio de venta de productos de panadería tienda a tienda, la administración de sus movimientos de mercancía, ya que, a la fecha este negocio solo hace el uso de papel para el manejo de sus cuentas, el cual no le permite generar un control a fondo y tener la información de una manera rápida y eficiente.

El desarrollo de esta aplicación, espera que mejore la velocidad en cálculos necesarios para los pedidos de productos que se realiza diariamente, además por medio de otros reportes como ventas y compras, se puedan evaluar el flujo de los productos y tomar decisiones con respecto a ello. La finalidad es que el cliente de esta solución mejore su administración de información y a su vez tenga la posibilidad de mejorar sus ventas además de reducir tiempos de decisiones sobre los productos. 

Esta solución pretende ser el comienzo de la incursión del negocio a la tecnología y así abrir paso a que otras demandas que presenta el negocio, como: gestión de pedidos de las tiendas por medio de oferta de la mercancía en otra aplicación y creación de facturas, estén a un paso menos de ser realizadas, gracias a que se va tener la administración de los productos ya gestionados en esta aplicación.

---

## 4. Funciones del Producto
Las funciones del software serán las siguientes:
* Gestión de productos.
* Gestión de clientes.
* Gestión de proveedores.
* Gestión de ventas.
* Gestión de compras.
* Generación de reporte de ventas.
* Generación de reporte de compras.
* Generación de reporte de productos a comprar.
* Gestión de inventario.
* Gestión de usuarios.

---

## 5. Características de los Usuarios

### Usuario Administrador
Es la persona que tiene permisos para:
* Gestionar usuarios vendedores.
* Ver, crear y modificar productos.
* Ver, crear y modificar clientes.
* Ver, crear y modificar proveedores.
* Ver y crear ventas.
* Ver y crear compras.
* Generar reportes de ventas, comprar y cantidades a comprar.
* Ver y modificar inventario.

### Usuario Vendedor
Este usuario tiene permisos para:
* Ver productos.
* Ver clientes.
* Ver y crear ventas.
* Ver y confirmar inventario, no tiene permisos para editar.
* Para las demás funciones no mencionadas, este usuario no tiene permisos habilitados.

---

## 6. Restricciones

1.  **Restricciones técnicas:**
    * **Plataforma de Operación:** La aplicación solo se ejecutará en sistema operativo Windows.
    * **Tecnología de desarrollo:** El lenguaje principal de programación es Java.
    * **Compatibilidad de hardware:** Equipo con mínimo los siguientes parámetros: Procesador Intel 3, memoria RAM 4 Gb, Disco duro de 256 GB, conexión a internet.
2.  **Restricciones Funcionales:**
    * No Generación de Factura Electrónica.
    * No Gestión de Pagos.
    * No Visualización para Tenderos (solo uso interno de la administración).
    * No Gestión de Pedidos.
    * No Comunicación con Aplicaciones de Terceros.
3.  **Restricción de movimientos de productos:** El sistema está enfocado en llevar la trazabilidad de los productos y NO en la logística de transporte de los mismos.

---

## 7. Requisitos Funcionales

| ID | Nombre | Descripción | Entrada | Salida | Criterio de Aceptación |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **RF01** | Registro nuevos usuarios | Permitir que un usuario se registre con su información básica, además de correo y contraseña. | Datos del usuario (Nombre, alias, correo, contraseña) | Confirmación de registro exitoso. | El usuario ha sido creado en la base de datos y puede iniciar sesión. |
| **RF02** | Ingreso de usuarios | Permitir el ingreso de usuarios registrados | Datos del usuario (correo, contraseña) | Visualización de las funcionalidades del software | El usuario puede ingresar y usar las funcionalidades del software. |
| **RF03** | Recuperación de contraseña para usuarios | Permitir poder recuperar contraseña por medio del correo. | Correo. | Mensaje por correo para poder recuperar la contraseña o cambiarla. | El usuario puede volver a entrar a su cuenta si su clave se le ha olvidado. |
| **RF04** | Registro y edición de productos | Permitir crear y modificar productos que maneja el negocio. | Datos del producto (Nombre, Proveedor, precio de compra, precio de venta, cantidad, fecha de vencimiento, cantidad a solicitar). | Confirmación de operación realizada en el producto. | Visualización en una lista de productos el elemento modificado o creado, con los datos ingresados. |
| **RF05** | Registro y edición de proveedores | Permitir, crear y modificar, proveedores del negocio. | Datos del proveedor (Nombre del negocio, Nombre de contacto, teléfono, dirección, productos ofrecidos, horario de atención.). | Confirmación de operación realizada en el proveedor. | Visualización en una lista de proveedores el elemento modificado o creado, con los datos ingresados. |
| **RF06** | Registro y edición de clientes | Permitir, crear y modificar clientes del negocio. | Datos del cliente (Nombre del negocio, nombre del contacto, teléfono, dirección, ruta destinada). | Confirmación de operación realizada en el cliente. | Visualización en una lista de clientes el elemento modificado o creado, con los datos ingresados. |
| **RF07** | Registro de compras | Permitir, crear y modificar compras realizadas a los proveedores. | Datos de la compra (fecha, producto, cantidad, copia de la factura en digital). | Confirmación de registro exitoso de una compra. | Visualización en una lista de compras el elemento modificado o creado, con los datos ingresados y el cálculo correspondiente al total de la compra. |
| **RF08** | Registro de ventas | Permitir, crear y modificar ventas realizadas a los clientes. | Datos de la venta (fecha, cliente, producto cantidad). | Confirmación de registro exitoso de una venta. | Visualización en una lista de ventas el elemento modificado o creado, con los datos ingresados y el cálculo correspondiente al total de la venta. |
| **RF09** | Registro y/o modificación de Inventario | Permitir confirmar o modificar los datos de productos cuando se haga un inventario manual. | Solicitud de ver inventario y/o cantidad de productos | Visualización del inventario y/o confirmación de modificación de cantidad del producto. | Visualización de todos los productos del inventario con cantidades actualizadas. |
| **RF10** | Reporte de ventas | Permitir observar el reporte de ventas por día, semana, mes, producto y cliente. | Solicitud de ver reporte de ventas con filtro. | Visualización de reporte de ventas según el filtro. | Visualización de productos vendidos según el filtro realizado. |
| **RF11** | Reporte de compras | Permitir observar el reporte de compras por día, semana, mes, producto y proveedor. | Solicitud de ver reporte de compras con filtro. | Visualización de reporte de compras según el filtro. | Visualización de productos comprados según el filtro realizado. |
| **RF12** | Reporte de cantidad a comprar | Permitir observar un estimado de productos a solicitar al proveedor dependiendo de un stock mínimo. | Solicitud de ver reporte de cantidad a comprar. | Visualización de productos necesarios por comprar. | Visualización de todos los productos necesarios por comprar acorde al cálculo de cantidad mínima menos cantidad en stock. |

---

## 8. Requisitos No Funcionales

| ID | Nombre | Descripción | Entrada | Salida | Criterio de Aceptación |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **RNF01** | Verificación de formularios | Verificación de una correcta entrada en cada uno de los campos de los formularios para: Crear usuario, ingreso de usuario, productos, proveedores, clientes, ventas, compras e inventario. | Texto de los campos de formulario | Mensaje de operación exitosa o de error en la digitación de los datos del formulario. | Validación de los campos diligenciados que sean acorde a los esperado en cada uno, sin dejar continuar con alguno erróneo. |
| **RNF02** | Verificación de datos no duplicados | Verificar que no exista un correo duplicado entre usuarios, igual para: nombre del producto, nombre del negocio, teléfonos, correo del cliente y del proveedor. | Datos principales de formularios | Mensaje de confirmación de operación o aviso de dato duplicado o existente. | En la base de datos, no existen datos duplicados en correos, nombre de producto y demás que necesiten ser únicos. |
| **RNF03** | Manejo de errores | Cuando el sistema presente fallas de operación, se muestran mensajes de fallas técnicas para evitar espera del usuario | Cualquier operación del usuario. | Mensaje de error de operación fallida o problemas técnicos. | El usuario no requiere de esperas innecesarias si el sistema no funciona correctamente, gracias a los mensajes de error. |
| **RNF04** | Rendimiento | El tiempo para procesar una operación realizada por el usuario es de menos de 5 segundos | Solicitud de operación | Confirmación o resultado de la operación | El sistema procesa las operaciones en menos de 5 segundos. |
| **RNF05** | Usabilidad | El sistema debe ser intuitivo que sea fácil de navegar y de utilizar cada una de sus funciones. | Iteración del usuario. | Operaciones exitosas. | Los usuarios pueden entender y usar la aplicación fácilmente. |
| **RNF06** | Seguridad | Encriptar los datos de los usuarios durante la transmisión y almacenamiento | Información de clientes y usuarios | Datos encriptados. | Todos los datos de usuarios y clientes están encriptados durante la transmisión y almacenamiento. |
| **RNF07** | Confiabilidad | El sistema debe estar disponible en los horarios de operación de la empresa, excluyendo el tiempo de mantenimiento planificado. | Usabilidad del sistema | Sistema operando correctamente | El sistema debe estar disponible al menos 99,5% del tiempo, excluyendo el tiempo de mantenimiento planificado. |