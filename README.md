# Docker image system-analysis

[Docker image](https://cloud.docker.com/repository/docker/uchimata/system-analysis) with all tools installed required for interactive docker host system analysis.

Image has sshd installed, to use it either COPY or mount a public SSH key to `/root/.ssh/authorized_keys` and run sshd `/root/run_ssh.sh`. Alternatively, set a password in the Dockerfile (please do not commit that Dockerfile anywhere ;) ) and adjust `sshd_config`.

Run `CMD` for `socat` connect back, `sshd`, and simple `bash`` are prepared in the `Dockerfile`.

Looking forward to additional ideas via the [issues](https://github.com/uchi-mata/system-analysis/issues)!
