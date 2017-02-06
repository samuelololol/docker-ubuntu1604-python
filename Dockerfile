FROM samuelololol/docker-ubuntu1604:v0.1
MAINTAINER samuelololol <samuelololol@gmail.com>
USER root
RUN apt-get -y update &&\
    apt-get -y install python-pip &&\
    pip install --upgrade pip &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /var/lib/apt-lists/*

# apt-get install -y build-essential
# apt-get install -y software-properties-common
# apt-get install -y curl git unzip vim wget
