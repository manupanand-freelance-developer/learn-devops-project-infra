#!/bin/bash 
# Set the password for the user "ec2-user" or any user you have
echo "${AWS_USER}:${AWS_PASSWORD}" | chpasswd
# Optionally enable password authentication if it's disabled by default
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd


