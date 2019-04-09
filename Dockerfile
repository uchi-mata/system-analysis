FROM alpine
RUN apk -q --no-progress update &&      \
    apk -q --no-progress upgrade &&     \
    apk -q --no-progress add            \
        git                             \
        vim                             \
        curl                            \
        nmap                            \
        tmux                            \
        wget                            \
        tcpdump                         \
        bash                            \
        libcap                          \
        net-tools                       \
        bind-tools			\
	perl				\
	socat				\
	stunnel				\
	python				\
	python3				\
	openssh			&&	\
     mkdir -p /root/.ssh && chmod 0700 /root/.ssh
COPY sshd_config /etc/ssh/sshd_config
COPY profile /root/.profile
CMD ["/bin/bash", "-l"]
