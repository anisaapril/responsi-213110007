FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get install -y apache2-utils && \
    apt-get clean
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]