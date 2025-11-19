FROM mariadb:latest

ENV MARIADB_ROOT_PASSWORD=parola123
ENV MARIADB_DATABASE=joomla
ENV MARIADB_USER=joomla
ENV MARIADB_PASSWORD=parola123

COPY joomla-final.sql /docker-entrypoint-initdb.d/joomla.sql
