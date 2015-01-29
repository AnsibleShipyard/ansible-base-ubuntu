base-ubuntu
===========

Base Ubuntu Dockerfile for Ansible.

This Dockerfile is pre-loaded with Ansible, and contains all the required
dependencies to run it's many trusted
[modules](http://docs.ansible.com/list_of_all_modules.html).

## Usage

docker pull [ansibleshipyard/ansible-base-ubuntu](https://registry.hub.docker.com/u/ansibleshipyard/ansible-base-ubuntu/)


### Building

```bash
bash build.go
```

### Alternative

docker build -t ansibleshipyard/ansible-base-ubuntu .
