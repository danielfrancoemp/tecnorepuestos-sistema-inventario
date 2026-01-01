#!/bin/bash

echo "=================================================="
echo "CONFIGURACIÓN DEL PROYECTO TECNOREPUESTOS S.A."
echo "=================================================="
echo ""

# Crear estructura de carpetas
echo "Creando estructura de carpetas..."

mkdir -p src/config
mkdir -p src/routes
mkdir -p src/controllers
mkdir -p src/services
mkdir -p src/models
mkdir -p src/middlewares
mkdir -p src/utils
mkdir -p db/migrations
mkdir -p db/seeds
mkdir -p test/unit
mkdir -p test/integration
mkdir -p test/e2e
mkdir -p docs
mkdir -p public/css
mkdir -p public/js
mkdir -p public/images
mkdir -p logs

echo "Carpetas creadas"
echo ""

# Crear archivos principales
echo "Creando archivos principales..."

touch server.js
touch src/app.js

# Rutas
touch src/routes/index.js
touch src/routes/auth.routes.js
touch src/routes/compras.routes.js
touch src/routes/ventas.routes.js
touch src/routes/productos.routes.js
touch src/routes/clientes.routes.js

# Controladores
touch src/controllers/auth.controller.js
touch src/controllers/compras.controller.js
touch src/controllers/ventas.controller.js
touch src/controllers/productos.controller.js
touch src/controllers/clientes.controller.js

# Servicios
touch src/services/compras.service.js
touch src/services/ventas.service.js
touch src/services/inventario.service.js
touch src/services/validacion.service.js
touch src/services/pdf.service.js

# Modelos
touch src/models/Usuario.js
touch src/models/Producto.js
touch src/models/Compra.js
touch src/models/Venta.js
touch src/models/Proveedor.js
touch src/models/Cliente.js
touch src/models/LogInventario.js

# Middlewares
touch src/middlewares/auth.middleware.js
touch src/middlewares/role.middleware.js
touch src/middlewares/validation.middleware.js
touch src/middlewares/error.middleware.js

# Configuración
touch src/config/database.js
touch src/config/auth.js
touch src/config/constants.js

# Utilidades
touch src/utils/logger.js
touch src/utils/response.js
touch src/utils/helpers.js

# Base de datos
touch db/schema.sql
touch db/migrations/001_create_tables.sql
touch db/seeds/test_data.sql

# Documentación
touch docs/arquitectura.md
touch docs/casos_de_uso.md
touch docs/reglas_negocio.md
touch docs/modelo_datos.md
touch docs/api_documentation.md

# .gitkeep para carpetas vacías
touch logs/.gitkeep
touch test/unit/.gitkeep
touch test/integration/.gitkeep
touch test/e2e/.gitkeep

echo "Archivos creados"
echo ""

# Mostrar estructura creada
echo "Estructura del proyecto:"
echo ""
tree -L 2 -I 'node_modules' 2>/dev/null || find . -type d -not -path '*/node_modules/*' -not -path '*/.git/*' | sed 's|[^/]*/|  |g'

echo ""
echo "=================================================="
echo "CONFIGURACIÓN COMPLETADA"
echo "=================================================="
echo ""
echo "Próximos pasos:"
echo "1. Copia el contenido de los artifacts a sus archivos correspondientes"
echo "2. Ejecuta: npm install"
echo "3. Configura tu archivo .env"
echo "4. Ejecuta: git add ."
echo "5. Ejecuta: git commit -m 'chore: initial project structure'"
echo ""