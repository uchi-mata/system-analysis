apt-get -qy update
apt-get -qy full-upgrade
apt-get -qy install                     \
    apt-transport-https                 \
    ca-certificates                     \
    curl                                \
    dnsutils                            \
    gcc                                 \
    git                                 \
    gnupg-agent                         \
    golang-go                           \
    iproute2                            \
    iputils-ping                        \
    libcap2-bin                         \
    net-tools                           \
    nmap                                \
    netcat                              \
    openssh-server                      \
    python3                             \
    python3-pip                         \
    screen                              \
    socat                               \
    software-properties-common          \
    stunnel                             \
    tcpdump                             \
    tmux                                \
    vim                                 \
    wget
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
apt-get -qy update
apt-get -qy install docker-ce docker-ce-cli containerd.io
rm -f /etc/ssh/ssh_host*
mkdir -p /root/.ssh
chmod 0700 /root/.ssh
apt-get -qy clean
apt-get -qy autoclean
apt-get -qy autoremove --purge
pip3 install awscli --upgrade
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod 0755 kubectl
mv kubectl /usr/local/bin
curl -L -o /usr/local/bin/amicontained https://github.com/genuinetools/amicontained/releases/download/v0.4.7/amicontained-linux-amd64 && chmod 0755 /usr/local/bin/amicontained
curl -L -o /usr/local/bin/botb https://github.com/brompwnie/botb/releases/download/1.5.0/botb_linux_amd64 && chmod 0755 /usr/local/bin/botb
