#!/bin/bash 

# install ansible core
sudo dnf install -y ansible-core.aarch64  2>&1 | tee -a /var/log/user_data.log

# install setup 
ansible-pull -i localhost, -U https:github/repo/asniblerepo playbook.yaml  vault_token=${vault_token} 2>&1 | tee -a /var/log/user_data.log

echo $AWS_USER