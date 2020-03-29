FROM samuelololol/docker-ubuntu1604:v0.1
MAINTAINER samuelololol <samuelololol@gmail.com>
USER root
RUN apt-get -y update && \
    apt-get -y install python3 &&\
    apt-get install -y build-essential python3-dev python3-pip python3-venv &&\
    pip3 install --upgrade pip &&\
    python3 -m pip install wheel &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /var/lib/apt-lists/*
