FROM wordpress:latest
<<<<<<< HEAD

RUN apk add curl

WORKDIR /var/www/html

RUN rm -rf /var/www/html/wp-content

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

=======
RUN apk add curl
WORKDIR /var/www/html
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
>>>>>>> c523384fd1a46e5829319ba48f53df51e8901f85
CMD ["apache2-foreground"]
