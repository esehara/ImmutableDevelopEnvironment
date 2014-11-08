#!/bin/bash
#
# First Development Envionment
#
# Description:
#  Happy Hacking Development short time ;)
#
# Usage:
#   wget -Oq- https://raw.githubusercontent.com/esehara/ImmutableDevelopEnvironment/master/first_environment.sh | sh
# 

## Main Editor
sudo apt-get install -y vim

## Python Environment
sudo pip install -y paramiko PyYAML Jinja2 httplib2

## Git Configure
git config --global user.email "esehara@gmail.com"
git config --global user.name "esehara shigeo"
git config --global core.editor 'vim -c "set fenc=utf-8"'

## Ansile Install
sudo apt-get install -y software-properties-common
sudo apt-add-repostiory ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

## If clean environment anyway, mkdir 
if [ ! -d $HOME/Code ];then;
  mkdir $HOME/Code
fi

if [ ! -d $HOME/base ];then;
  mkdir $HOME/base
  cd $HOME/base;git clone git@github.com:esehara/ImmutableDevelopEnvironment.git
fi
