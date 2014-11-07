#!/bin/bash

## Python Environment
sudo pip install paramiko PyYAML Jinja2 httplib2

## Git Configure
git config --global user.email "esehara@gmail.com"
git config --global user.name "esehara shigeo"

## Ansile Install
sudo apt-get install software-properties-common
sudo apt-add-repostiory ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
