FROM ubuntu:22.04
USER root
COPY ./ubuntu-2204-deb/sonic-pi_4.3.0_1_ubuntu22.04.amd64.deb /tmp/
RUN cd /tmp && \
  apt-get update && \
  apt-get install -y ./sonic-pi_4.3.0_1_ubuntu22.04.amd64.deb

USER 1000
#CMD ["/usr/bin/sonic-pi"]
