FROM ubuntu:latest
RUN  apt update -y
RUN apt install tzdata -y
RUN apt install apache2 -y
RUN service apache2 start
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
