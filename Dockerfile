FROM ubuntu:latest
MAINTAINER swethajaganathan028@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zipRUN cp -rvf photogenic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22 20