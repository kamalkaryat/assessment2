FROM ubuntu
RUN apt update && \
    apt install apache2 -y && \
    apt install apache2-utils -y && \
    apt clean
COPY index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]