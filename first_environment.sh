#!/bin/bash

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
