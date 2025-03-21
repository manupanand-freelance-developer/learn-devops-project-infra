#!/bin/bash 
# Set the password for the user "ec2-user" or any user you have
echo "${AWS_USER}:${AWS_PASSWORD}" | chpasswd   2>&1 | tee -a /var/log/user_data.log


# Enable password authentication in SSH
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config  2>&1 | tee -a /var/log/user_data.log

sudo sed -i 's/^ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config  2>&1 | tee -a /var/log/user_data.log


# Ensure UsePAM is enabled
echo "UsePAM yes" | sudo tee -a /etc/ssh/sshd_config

# install ansible core
sudo dnf install -y ansible-core.aarch64  2>&1 | tee -a /var/log/user_data.log

# install setup 
ansible-pull -i localhost, -U https://github.com/manupanand-freelance-developer/learn-devops-project-infra  tools-infra/ansible/playbook.yaml -e role_name=${role_name} 2>&1 | tee -a /var/log/user_data.log
