#
# ansibleshipyard/base-ubuntu
#   docker build -t ansibleshipyard/base-ubuntu .
#   https://github.com/AnsibleShipyard/base-ubuntu
#

FROM ubuntu:13.10
MAINTAINER Jason Giedymin
RUN apt-get clean
RUN apt-get -y update
RUN apt-get install -y python-yaml python-jinja2 git unzip
RUN git clone http://github.com/ansible/ansible.git /tmp/ansible
WORKDIR /tmp/ansible
ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin:/bin:$PATH
ENV ANSIBLE_LIBRARY /tmp/ansible/library
ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
ENV WORKDIR /tmp/build
RUN mkdir -p /tmp/build
RUN ls -la /tmp/build
WORKDIR /tmp/build
