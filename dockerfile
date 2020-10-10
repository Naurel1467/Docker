FROM ubuntu:latest

MAINTAINER raviteja
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
RUN sudo apt-get update && sudo apt-get install -y jenkins
