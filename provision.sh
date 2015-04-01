#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# fetch aptitude updates
sudo apt-get update

# install prerequisite packages
sudo apt-get -y install curl \
                        git \
                        python-pycurl \
                        python-pip \
                        python-yaml \
                        python-paramiko \
                        python-jinja2

# install Ansible
sudo pip install ansible==1.6

# Run Ansible Playbook
cd /vagrant/provisioning
ansible-playbook -c local -i 'localhost,' smart-on-fhir-servers.yml 
