# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    ansible-base-ubuntu
# tag:      latest
# name:     ansibleshipyard/ansible-mesos
# version:  v0.1.1
# repo:     https://github.com/AnsibleShipyard/ansible-base-ubuntu
# how-to:   docker build --force-rm -t ansibleshipyard/ansible-base-ubuntu .
# Requires:
# authors:  github:@jasongiedymin,
#           github:
# ------------------------------------------------------

# will be 14.04.1
FROM ubuntu:latest
MAINTAINER ansibleshipyard

RUN apt-get clean
RUN apt-get -y update
RUN apt-get install -y python-dev python-yaml python-jinja2 git unzip python-pip
RUN pip install paramiko PyYAML jinja2 httplib2 boto
RUN git clone http://github.com/ansible/ansible.git /tmp/ansible

WORKDIR /tmp/ansible

ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin:/bin:$PATH
ENV ANSIBLE_LIBRARY /tmp/ansible/library
ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
ENV WORKDIR /tmp/build

RUN git submodule update --init --recursive
RUN mkdir -p /tmp/build
RUN ls -la /tmp/build
