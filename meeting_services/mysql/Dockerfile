# Derived from official mysql image (our base image)
FROM mysql:5.7
# Add a database
ENV MYSQL_DATABASE meeting_services
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=usr
ENV MYSQL_PASSWORD=pwd
# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./init_db.sql /docker-entrypoint-initdb.d/