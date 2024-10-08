# Documentación de la Etapa 1 del Proyecto Blog y Foro Monolítico

## 1. Introducción

### 1.1. Objetivo del Proyecto
El objetivo del proyecto es desarrollar una aplicación web monolítica para blogs y foros que permita a los usuarios crear, leer, actualizar y eliminar publicaciones y temas de discusión.

### 1.2. Alcance del Proyecto
El alcance del proyecto incluye la creación de usuarios, la autenticación, la gestión de entradas de blog,
la gestión de comentarios y la creación de temas de foro.

## 2. Requisitos del Proyecto

### 2.1. Usuarios y Roles
- **Administradores**: Gestión completa del sitio, moderación de contenido.
- **Autores**: Publicación y gestión de sus propias entradas de blog.
- **Visitantes**: Lectura de entradas de blog y foros.

### 2.2. Funcionalidades Principales
- Registro y autenticación de usuarios.
- Publicación y gestión de entradas de blog.
- Gestión de comentarios.
- Creación y gestión de temas de foro.

## 3. Requisitos Funcionales

### 3.1. Registro y Autenticación
Los usuarios se registrarán proporcionando un nombre, email y contraseña. La autenticación se realizará utilizando JSON Web Tokens (JWT).

### 3.2. Gestión de Entradas de Blog
Los autores y administradores podrán crear nuevas entradas de blog, editarlas y eliminarlas. Los visitantes podrán leer todas las entradas de blog.

### 3.3. Gestión de Comentarios
Los comentarios se almacenarán en una tabla separada. Los comentarios podrán ser leídos por los visitantes y los autores. Los autores y administradores podrán comentar las entradas de blog. Lo administradores adicionalmente podrán moderar los comentarios.

### 3.4. Creación y Gestión de Temas de Foro
Los temas de foro se almacenarán en una tabla separada. Los temas de foro podrán ser leídos por los visitantes, los autores y administradores. Los autores podrán crear temas de foro, removerlos, modificarlos y responder a los temas de foro, así como los administradores.

### 3.5. Gestión de Respuestas de Foro
Los temas de foro podrán tener varias respuestas. Tanto los autores, como los administradores podrán crear respuestas y remover las propias. Los administradores podrán moderar las respuestas. Los visitantes podrán leer las respuestas.


## 4. Requisitos No Funcionales

### 4.1. Rendimiento
La aplicación debe poder manejar hasta 1000 usuarios concurrentes sin degradar el rendimiento.

### 4.2. Seguridad
Los datos sensibles deben ser encriptados. Se deben implementar medidas contra ataques de inyección SQL y Cross-Site Scripting (XSS).

### 4.3. Escalabilidad
La arquitectura debe permitir una fácil escalabilidad horizontal para manejar incrementos en la carga de trabajo.

### 4.4. Mantenibilidad
El código debe seguir estándares de codificación y estar bien documentado para facilitar el mantenimiento y la evolución del sistema.

## 5. Diagrama de Componentes

### 5.1. Diagrama de Componentes
![](./assets/diagrama_componentes.png)

## 6. Conclusiones

### 6.1. Resumen
Esta etapa define los usuarios, roles, y funcionalidades principales de la aplicación, así como los requisitos no funcionales y la arquitectura general del sistema.