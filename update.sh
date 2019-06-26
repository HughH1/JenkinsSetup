#!/bin/bash

cd /home/jenkins

sudo rm jenkins.war

sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"

exit
