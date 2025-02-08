FROM quay.io/fedora/fedora-bootc:43@sha256:e99c8d8ac494a8494194ed851c11102a653965e7c22e9b7b3b742d075f8a8f13

COPY etc etc
COPY usr usr

#RUN dnf install -y cockpit cockpit-podman cockpit-storaged cockpit-ws cockpit-machines cockpit-selinux bash-completion bwm-ng dmraid ethtool firewalld git htop lm_sensors nfs-utils nss-mdns pcp pcp-selinux sysstat tree tuned wget vim-enhanced && dnf clean all

#RUN systemctl enable fstrim.timer podman-auto-update.timer cockpit.socket

#let's set the timezone
#RUN ln -s /usr/share/zoneinfo/America/Chicago /etc/localtime

#added linting to catch basic issues
#RUN bootc container lint
