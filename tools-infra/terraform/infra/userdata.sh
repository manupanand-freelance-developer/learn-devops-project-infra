#!/bin/bash 
# Set the password for the user "ec2-user" or any user you have
echo "$AWS_USER:$AWS_PASSWORD" | chpasswd
# Optionally enable password authentication if it's disabled by default
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd


# install ansible core
#sudo dnf install -y ansible-core.aarch64  2>&1 | tee -a /var/log/user_data.log

# install setup 
#ansible-pull -i localhost, -U https:github/repo/asniblerepo playbook.yaml  vault_token=${vault_token} 2>&1 | tee -a /var/log/user_data.log

