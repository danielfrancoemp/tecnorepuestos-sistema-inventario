## DANIEL ALEJANDRO FRANCO EMPERADOR                SOF-NO-9-4 GESTION Y CONFIGURACION DEL SOFTWARE

Sistema web TecnoRepuestos S.A.

## Descripción del Proyecto

TecnoRepuestos S.A. es un sistema de gestión empresarial que permite administrar el inventario de productos, registrar compras a proveedores, procesar ventas a clientes, generar reportes históricos y ofrece trazabilidad de pedidos. El sistema cuenta con diferentes roles de usuario y un portal especializado para clientes.

## Características Principales

### Gestión de Inventario
-  Registro y actualización de productos
- Control automático de stock mínimo
- Alertas de disponibilidad
- Log completo de movimientos

### Gestión de Compras
- Registro de compras a proveedores
- Actualización automática de stock
- Historial de compras
- Validaciones de fecha y datos

### Gestión de Ventas
- Registro de ventas
- Generación automática de comprobantes PDF
- Control de stock en tiempo real
- Cálculo automático de IVA y totales

### Portal de Cliente
- Consulta de pedidos
- Descarga de comprobantes
- Historial de compras

## Arquitectura

El proyecto utiliza una **arquitectura de 3 capas**:

- **Capa de Presentación**: Interfaz web y APIs REST
- **Capa de Lógica de Negocio**: Servicios y validaciones
- **Capa de Acceso a Datos**: Modelos y gestión de BD

## Tecnologías Utilizadas

- **Backend**: Node.js 
- **Base de Datos**: Oracle SQL
- **Autenticación**: JWT (JSON Web Tokens)
- **Generación de PDFs**: PDFKit
- **Testing**: Jest
- **Documentación**: Swagger/OpenAPI

## Estructura del Proyecto

```
tecnorepuestos-sistema-inventario/
├── src/                  # Código fuente
│   ├── config/          # Configuraciones
│   ├── routes/          # Rutas de la API
│   ├── controllers/     # Controladores
│   ├── services/        # Lógica de negocio
│   ├── models/          # Modelos de datos
│   ├── middlewares/     # Middlewares
│   └── utils/           # Utilidades
├── db/                  # Scripts de base de datos
├── test/                # Pruebas automatizadas
├── docs/                # Documentación
└── public/              # Archivos estáticos
```

## Instalación y Configuración

### Prerrequisitos

- Node.js (v16 o superior)
- Oracle SQL (v12g o superior)
- Git

### Pasos de instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/danielfrancoemp/tecnorepuestos-sistema-inventario.git
cd tecnorepuestos-sistema-inventario
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Configurar variables de entorno**
```bash
cp .env.example .env
# Editar .env con tus configuraciones
```

4. **Configurar base de datos**
```bash
# Crear la base de datos
createdb tecnorepuestos_db

# Ejecutar migraciones
npm run migrate

# (Opcional) Cargar datos de prueba
npm run seed
```

5. **Iniciar el servidor**
```bash
# Modo desarrollo
npm run dev

# Modo producción
npm start
```

El servidor estará disponible en: `http://localhost:3000`

## Variables de Entorno

Crear un archivo `.env` basado en `.env.example`:

```env
# Servidor
NODE_ENV=development
PORT=3000

# Base de Datos
DB_HOST=localhost
DB_PORT=5432
DB_NAME=tecnorepuestos_db
DB_USER=postgres
DB_PASSWORD=tu_password

# JWT
JWT_SECRET=tu_clave_secreta_aqui
JWT_EXPIRES_IN=24h

# Otros
LOG_LEVEL=info
```

## Testing

```bash
# Ejecutar todas las pruebas
npm test

# Pruebas con cobertura
npm run test:coverage

# Pruebas unitarias
npm run test:unit

# Pruebas de integración
npm run test:integration
```