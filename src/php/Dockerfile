ARG VERSION_PHP_FPM

FROM php:${VERSION_PHP_FPM}-fpm
 
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
