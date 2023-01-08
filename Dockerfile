FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get update
RUN apt-get -y install apache2-utils
RUN apt install -y tcl
RUN echo 'Hello from Yevhenii Tymofeiev' > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]
