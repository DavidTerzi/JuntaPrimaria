# 🏛️ Sistema Junta Primaria - Guía de Instalación

## 📋 Requisitos Previos

- **Laragon** (o XAMPP/WAMP) con:
  - PHP 8.0+
  - MySQL 8.0+
  - Apache/Nginx
- **Node.js** v18+ y npm
- **Git**

## 🗄️ Configuración de Base de Datos

### 1. Crear la Base de Datos

1. Abre **phpMyAdmin** en `http://localhost/phpmyadmin`
2. Crea una nueva base de datos llamada: `junta_primaria_db`
3. Importa tu dump existente (si lo tienes)

### 2. Ejecutar Script de Autenticación

1. Abre **phpMyAdmin** y selecciona la base de datos `junta_primaria_db`
2. Ve a la pestaña **SQL**
3. Copia y pega el contenido completo del archivo `database/auth-tables.sql`
4. Haz clic en **Continuar** para ejecutar

Este script creará:

- ✅ Tabla `roles` (admin, usuario, moderador)
- ✅ Tabla `usuarios` (sistema de autenticación)
- ✅ Tabla `sesiones` (control de sesiones)
- ✅ Usuario administrador por defecto

## ⚙️ Configuración del Proyecto

### 1. Instalar Dependencias

```bash
cd C:\laragon\www\JuntaPrimaria
npm install
```

### 2. Configurar Variables de Entorno

El archivo `.env.local` ya está configurado con valores por defecto para Laragon:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=junta_primaria_db
DB_PORT=3306
```

**⚠️ IMPORTANTE:** Si tu configuración de MySQL es diferente, edita el archivo `.env.local`

### 3. Iniciar el Servidor de Desarrollo

```bash
npm run dev
```

La aplicación estará disponible en: `http://localhost:3000`

## 🔐 Credenciales por Defecto

### Usuario Administrador

- **Usuario:** `admin`
- **Email:** `admin@juntaprimaria.gov.ar`
- **Contraseña:** `admin123`

**⚠️ CAMBIAR EN PRODUCCIÓN**

## 🧪 Probar la Instalación

1. Ve a `http://localhost:3000`
2. Serás redirigido automáticamente al login
3. Usa las credenciales de administrador
4. Si todo funciona, serás redirigido al dashboard

## 📁 Estructura del Proyecto

```
JuntaPrimaria/
├── database/
│   └── auth-tables.sql          # Script SQL para autenticación
├── scripts/
│   └── generate-admin-hash.js   # Generador de hash para contraseñas
├── src/
│   ├── app/
│   │   ├── api/auth/            # APIs de autenticación
│   │   └── (main)/auth/         # Páginas de login
│   ├── lib/
│   │   ├── db.ts               # Conexión a base de datos
│   │   └── auth.ts             # Servicios de autenticación
│   └── middleware/
│       └── auth-middleware.ts   # Middleware de autenticación
└── .env.local                   # Variables de entorno
```

## 🔧 Comandos Útiles

```bash
# Desarrollo
npm run dev

# Producción
npm run build
npm run start

# Generar nuevo hash para contraseña
node scripts/generate-admin-hash.js
```

## 🚨 Solución de Problemas

### Error de Conexión a Base de Datos

1. Verifica que Laragon esté iniciado
2. Comprueba que MySQL esté corriendo
3. Revisa las credenciales en `.env.local`

### Error "Table doesn't exist"

1. Ejecuta el script `database/auth-tables.sql` en phpMyAdmin
2. Verifica que la base de datos `junta_primaria_db` existe

### Error de Autenticación

1. Verifica que las tablas `usuarios` y `roles` existan
2. Comprueba que el usuario `admin` esté insertado
3. Revisa la consola del navegador para errores

### Puerto 3000 en Uso

```bash
# Cambiar puerto
npm run dev -- -p 3001
```

## 📝 Notas de Seguridad

- ✅ Las contraseñas se almacenan hasheadas con bcrypt
- ✅ Tokens JWT para sesiones seguras
- ✅ Cookies httpOnly para prevenir XSS
- ✅ Middleware de autenticación en todas las rutas

## 🎯 Próximos Pasos

Una vez que la autenticación funcione:

1. **Personalizar roles:** Agrega más roles según tus necesidades
2. **Agregar usuarios:** Crea más usuarios desde la base de datos
3. **Integrar con datos existentes:** Conecta las otras tablas de tu dump
4. **Personalizar dashboard:** Adapta los datos mostrados

---

### 👨‍💻 Credenciales de Prueba

```
Usuario: admin
Contraseña: admin123
```

**¡Listo para usar!** 🚀
