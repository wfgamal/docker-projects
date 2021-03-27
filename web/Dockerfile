FROM remote_centos7

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install epel-release                  && \
  yum -y install nginx  && \
  yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm         && \
  yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
  yum -y install yum-utils  && \
  yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh

