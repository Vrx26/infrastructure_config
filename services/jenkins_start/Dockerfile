FROM jenkins/jenkins:jdk11

USER root

RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get install docker-ce=17.12.1~ce-0~debian -y
RUN usermod -aG docker jenkins

RUN apt update &&\ 
apt install -y maven &&\ 
apt install -y git &&\
apt install -y jq &&\
apt install -y libxml2-utils &&\
apt install -y libxml-xpath-perl


ENV JENKINS_OPTS=--httpPort=8090
