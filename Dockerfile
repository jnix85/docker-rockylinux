FROM rockylinux:9

RUN dnf upgrade -y && \
    dnf clean all 