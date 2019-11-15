FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
COPY config/sshd_config /etc/ssh/sshd_config
COPY config/profile /root/.profile
COPY app /app
RUN sh /app/pkg_install.sh
#COPY sshkey.pub /root/.ssh/authorized_keys
#CMD ["/usr/bin/socat","exec:'bash -li',pty,stderr,setsid,sigint,sane", "tcp:YOURHOST.INVALID.COM:4444"]
#CMD ["/root/run_ssh.sh"]
CMD ["/bin/bash", "-l"]
