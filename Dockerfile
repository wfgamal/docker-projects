FROM nginx:alpine


RUN echo "this is my first container" > /var/www/html/index.html

CMD apachectl -DFOREGROUND
