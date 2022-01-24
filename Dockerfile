FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install iputils-ping -y

# EXPOSE 80

CMD [ "/bin/ping" , "8.8.8.8" ]

WORKDIR /app/src

ADD [ "file.txt" , "file-1.txt" ]