FROM centos:7.6.1810

LABEL Maintainer="Dave Collier <lardelbow@gmail.com>" Description="Base CentOS OpenSSH server image"

ENV TINI_VERSION v0.18.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

EXPOSE 22

RUN yum -y erase vim-minimal iputils libss && \
    yum -y install openssh openssh-server openssh-clients && \
    yum -y clean all

ADD start.sh /start.sh

RUN chmod +x /start.sh /tini

ENTRYPOINT ["/tini", "-g", "--"]

CMD /start.sh

# Build Image: docker build -t docswebapps/centos-ssh .
