FROM centos:7

RUN yum install -y openssh-server

SHELL ["/bin/bash", "-c"]

RUN   useradd remote_user && \
   echo "1234" |  passwd remote_user --stdin && \
   mkdir /home/remote_user/.ssh  && \
   chmod 700 /home/remote_user/.ssh


COPY  id_rsa.pub  /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys
    

RUN /usr/sbin/sshd-keygen

RUN yum install -y mysql

RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
    python get-pip.py && \
    pip install awscli --upgrade

CMD /usr/sbin/sshd -D
