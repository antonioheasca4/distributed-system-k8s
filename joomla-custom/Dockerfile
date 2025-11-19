FROM joomla:php8.2-apache
COPY joomla-site.tar.gz /tmp/
RUN rm -rf /var/www/html/* \
    && tar xzf /tmp/joomla-site.tar.gz -C /var/www/html \
    && chown -R www-data:www-data /var/www/html