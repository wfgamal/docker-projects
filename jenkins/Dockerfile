FROM centos

RUN yum install -y openssh-server

RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY  remote-key.pub  /home/remote_user/.ssh/authurized_keys

RUN chown remote_user:remote_user /home/remote_user/.ssh/authorized_keys && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen
CMD /usr/sbin/sshd -D
