FROM jenkins/jenkins:2.332.3-alpine-jdk8
MAINTAINER zhengwei <zhengwei@gdcapf.com>

ENV TIME_ZONE="Asia/Shanghai"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
