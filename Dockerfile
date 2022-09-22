FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update 
RUN apt install –y apache2 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]