#!/bin/bash

sudo apt-get install openjdk-8-jdk
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins


sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"

touch jenkins.service
sudo chmod 777 jenkins.service
echo "[Unit]" >> jenkins.service
echo "Description=Jenkins" >>jenkins.service
echo "[Service]" >> jenkins.service
echo "User=jenkins" >> jenkins.service
echo "WorkingDirectory=/home/jenkins" >> jenkins.service
echo "ExecStart=/usr/bin/java -jar /home/jekins/jenkins.war" >> jenkins.service
echo "[Install]" >> jenkins.service
echo "WantedBy=multi-user.target" >> jenkins.service

sudo mv jenkins.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins




