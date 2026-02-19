# 1. Definimos la imagen base (PHP 8.5 con FPM sobre Alpine Linux)
FROM php:8.5-fpm-alpine

# 2. Instalamos las extensiones de PHP para MySQL
# En Alpine, pdo_mysql no suele requerir librerías externas pesadas como postgresql-dev
RUN docker-php-ext-install pdo pdo_mysql