#!/bin/bash
sudo apt-get install -ywget vim openjdk-8-jdk
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins
sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"
sudo cp jenkins.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins
