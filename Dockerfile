FROM docker-ubuntu1604
MAINTAINER samuelololol <samuelololol@gmail.com>
USER root
RUN apt-get -y update &&\
    apt-get -y install python-pip &&\
    pip install --upgrade pip &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /var/lib/apt-lists/*
