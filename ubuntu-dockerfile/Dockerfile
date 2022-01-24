FROM ubuntu:latest

RUN apt update -y && \
    apt install nginx net-tools -y

COPY [ "index.html" , "/var/www/html/" ]

EXPOSE 80

ENTRYPOINT nginx -g 'daemon off;'