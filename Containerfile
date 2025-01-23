FROM quay.io/fedora/fedora-bootc:42

COPY etc etc
COPY usr usr

#RUN dnf install -y cockpit cockpit-podman cockpit-storaged cockpit-ws cockpit-machines cockpit-selinux bash-completion bwm-ng dmraid ethtool firewalld git htop lm_sensors nfs-utils nss-mdns pcp pcp-selinux sysstat tree tuned wget vim-enhanced && dnf clean all

#RUN systemctl enable fstrim.timer podman-auto-update.timer cockpit.socket

#let's set the timezone
#RUN ln -s /usr/share/zoneinfo/America/Chicago /etc/localtime

#added linting to catch basic issues
#RUN bootc container lint
