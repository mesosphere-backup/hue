FROM ubuntu:precise

RUN apt-get update
RUN apt-get install -q -y curl wget sudo

RUN curl -s http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/archive.key | sudo apt-key add -
RUN wget http://archive.cloudera.com/cdh5/one-click-install/precise/amd64/cdh5-repository_1.0_all.deb
RUN sudo dpkg -i cdh5-repository_1.0_all.deb
RUN sudo apt-get update
RUN sudo apt-get install -q -y hadoop-httpfs hue hue-server
RUN sudo apt-get install -q -y openjdk-7-jre

EXPOSE 8000
EXPOSE 14000