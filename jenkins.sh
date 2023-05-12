#!/bin/bash
sudo yum update -y
sudo yum install git -y && sudo yum install maven -y
echo 'export M2_HOME=/usr/share/maven'>>~/.bash_profile
echo 'export PATH=${M2_HOME}/bin:${PATH}'>>~/.bash_profile
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
  https://pkg.jenkins.io/redhat-stable/jenkins.repo 
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo amazon-linux-extras install java-openjdk11 -y && sudo yum install jenkins -y
sudo systemctl enable jenkins && sudo systemctl start jenkins && sudo systemctl status jenkins
 
 