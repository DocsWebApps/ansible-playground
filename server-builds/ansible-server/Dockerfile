FROM base-server:latest

LABEL Maintainer="Dave Collier <lardelbow@gmail.com>" Description="Build an Ansible contoller container"

ADD start.sh /start.sh

RUN chmod +x /start.sh /tini

ENTRYPOINT ["/tini", "-g", "--"]

CMD /start.sh

# Build Image: docker build -t ansible-server .
