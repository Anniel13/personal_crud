# 1. Definimos la imagen base (PHP 8.5 con FPM sobre Alpine Linux)
FROM php:8.5-fpm-alpine

# 2. Instalamos las librerías del sistema necesarias para PostgreSQL
# 3. Instalamos las extensiones de PHP pdo y pdo_pgsql
RUN apk add --no-cache postgresql-dev \
    && docker-php-ext-install pdo pdo_pgsql