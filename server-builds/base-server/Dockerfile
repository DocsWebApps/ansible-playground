FROM centos:7.6.1810

LABEL Maintainer="Dave Collier <lardelbow@gmail.com>" Description="Base CentOS OpenSSH/Ansible server image"

# Add Remote Tini
#ENV TINI_VERSION v0.18.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

# Add Local Tini
ADD tini /tini

EXPOSE 22

RUN yum -y erase vim-minimal iputils libss && \
    yum -y install openssh openssh-server openssh-clients && \
    yum -y install epel-release ansible && \
    yum -y install vim wget curl && \
    yum -y clean all


# Build Image: docker build -t base-server .
