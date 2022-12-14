FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update 
RUN apt -y install apache2 
RUN apt -y install apache2-utils 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]