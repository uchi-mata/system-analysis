# Docker image system-analysis

[Docker image](https://cloud.docker.com/repository/docker/uchimata/system-analysis) with all tools installed required for interactive docker host system analysis.

Image has sshd installed, to use it either add/mount a public SSH key to /root/.ssh/authorized\_keys and run sshd with:
```
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa &&
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa &&
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa &&
/usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519 &&
/usr/sbin/sshd
```

Looking forward to additional ideas via the [issues](https://github.com/uchi-mata/system-analysis/issues)!
