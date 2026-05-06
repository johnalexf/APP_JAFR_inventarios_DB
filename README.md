# APP_JAFR_inventarios_DB - Base de Datos y Modelamiento

## Descripción del Repositorio
Este repositorio contiene de forma exclusiva el diseño, modelamiento y documentación de la base de datos para el proyecto **JAFR**. 

JAFR es un sistema diseñado para administrar el control de inventario, las compras y las ventas de un distribuidor independiente de productos finales de panadería y dulcería. El código fuente de la aplicación de escritorio (desarrollada en Java) se maneja en un repositorio independiente para mantener una estricta separación de responsabilidades.

## Estructura del Proyecto
El repositorio está organizado en los siguientes directorios para facilitar la consulta técnica:

*   **`/documentacion`**: Contiene la descripción general del proyecto, alcance, restricciones y la especificación detallada de los requerimientos funcionales y no funcionales (`descripcion_y_requerimientos.md`).
*   **`/diagramas`**: Almacena las representaciones visuales del modelo de datos, incluyendo la versión definitiva del Diagrama Entidad-Relación (`1.0 DER_diagrama_entidad_relacion_JAFR_V2_2.jpg`).
*   **`/diccionario_datos`**: Define exhaustivamente las 10 tablas que componen el modelo relacional, indicando tipos de datos, llaves primarias/foráneas y restricciones operativas (`diccionario_jafr.md`).
*   **`/modelos`** *(Próximamente)*: Archivos de diseño físico generados en MySQL Workbench (`.mwb`).
*   **`/scripts`** *(Próximamente)*: Archivos con sentencias DDL (Data Definition Language) para la creación de esquemas y tablas, y DML (Data Manipulation Language) para la carga de datos iniciales.

## Arquitectura de Datos
El modelo relacional está normalizado para garantizar la integridad de las transacciones logísticas y se divide lógicamente en:
1.  **Seguridad y Accesos:** `Empresa`, `Roles` y `Usuarios`.
2.  **Distribución y Clientes:** `Rutas` y `Clientes`.
3.  **Catálogo e Inventario:** `Tipos_productos`, `Productos` y `Proveedores`.
4.  **Movimientos de Abastecimiento:** `Compras` y `Detalle de compras`.
5.  **Movimientos de Distribución:** `Ventas` y `Detalle de ventas`.

## Tecnologías Implementadas
*   **Motor RDBMS:** MySQL
*   **Herramienta de Modelado:** MySQL Workbench