FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
RUN sudo apt install –y apache2-utils 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
