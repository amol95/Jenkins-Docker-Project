FROM ubuntu
MAINTAINER amol2929funde@gmail.com
RUN apt-get clean && apt-get update
RUN apt-get install -y apache2 && apt-get clean
RUN apt-get install -y apache2-utils
RUN apt-get install -y wget
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www/html/
#CMD [“apache2ctl”, “-D”, “FOREGROUND”]
EXPOSE 80
CMD apachectl -D FOREGROUND

#FROM ubuntu
#MAINTAINER amol2929funde@gmail.com
#RUN apt-get clean && apt-get update
#RUN apt-get install -y apache2 
#RUN apt-get install -y wget 
#RUN apt-get install -y unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip photogenic.zip
#RUN cp -rvf photogenic/* .
#RUN rm -rf photogenic photogenic.zip
#RUN a2enmod rewrite
#RUN chown -R www-data:www-data /var/www/html/
#EXPOSE 80
#CMD apachectl -D FOREGROUND
 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
