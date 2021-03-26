FROM centos

RUN yum install -y httpd

RUN echo "this is my first container" > /var/www/html/index.html

CMD apachectl -DFOREGROUND
