#!/bin/bash

/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa;
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa;
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa;
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519;
mkdir -p /run/sshd;
/usr/sbin/sshd -D
