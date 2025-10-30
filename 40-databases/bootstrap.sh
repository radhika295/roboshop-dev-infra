#!/bin/bash

dnf install ansible -y

#ansible-pull -U https://github.com/radhika295/ansible-roboshop-roles-tf.git -e component=mongodb main.yaml

REPO_URL=https://github.com/radhika295/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf
component=$1
environment=$2
mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

#check if ansible repo is already clones or not

if [ -d $ANSIBLE_DIR ]; then

        cd $ANSIBLE_DIR
        git pull
else

        git clone $REPO_URL
        cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component -e env=$environment main.yaml