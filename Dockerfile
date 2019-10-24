FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
COPY sshd_config /etc/ssh/sshd_config
COPY profile /root/.profile
COPY socat_listener.sh /
COPY run_ssh.sh /root/run_ssh.sh
COPY pkg_install.sh /
RUN apt-get -qy update && apt-get -qy full-upgrade
RUN sh /pkg_install.sh
#COPY sshkey.pub /root/.ssh/authorized_keys
#CMD ["/usr/bin/socat","exec:'bash -li',pty,stderr,setsid,sigint,sane", "tcp:YOURHOST.INVALID.COM:4444"]
#CMD ["/root/run_ssh.sh"]
CMD ["/bin/bash", "-l"]
