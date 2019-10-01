FROM base-client:latest 

LABEL Maintainer="Dave Collier <lardelbow@gmail.com>" Description="Build a centOS OpenSSH client image"

ADD start.sh /start.sh

RUN chmod +x /start.sh /tini

ENTRYPOINT ["/tini", "-g", "--"]

CMD /start.sh

# Build Image: docker build -t centos-ssh .
