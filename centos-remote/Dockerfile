FROM centos

RUN yum install -y openssh-server

SHELL ["/bin/bash", "-c"]

RUN   useradd remote_user && \
   echo "remote_user:1234" |  chpasswd && \
   mkdir /home/remote_user/.ssh  && \
   chmod 700 /home/remote_user/.ssh

RUN   mkdir /home/remote_user/.ssh/authorized_keys 
COPY  id_rsa.pub  /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh
RUN    chmod 600 /home/remote_user/.ssh/authorized_keys
    

RUN ssh-keygen -A
EXPOSE 22
RUN rm -rf /var/run/nologin
CMD /usr/sbin/sshd -D
