FROM wordpress:latest
RUN apk add curl
WORKDIR /var/www/html
RUN rm -rf /var/www/html/wp-content
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]
