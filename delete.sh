#!/bin/bash

sudo systemctl stop jenkins
sudo systemctl disable jenkins
sudo rm /etc/systemd/system/jenkins.service
sudo rm -Rf /home/jenkins
sudo userdel jenkins
