FROM centos:8

RUN dnf install epel-release -y
RUN dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
RUN dnf clean all
