FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install apache2 curl

COPY ./webapp/ /var/www/html/

EXPOSE 80

ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
