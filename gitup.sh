git add .
echo commit for ?
read commit
git commit -m "$commit"
git push origin main
# install ansible core
#sudo dnf install -y ansible-core.aarch64  2>&1 | tee -a /var/log/user_data.log

# install setup 
#ansible-pull -i localhost, -U https:github/repo/asniblerepo playbook.yaml  vault_token=${vault_token} 2>&1 | tee -a /var/log/user_data.log
BASE_DIR="/actions-runner/_work/learn-devops-project-infra/learn-devops-project-infra"
 for role in "bastion-node" "grunner_arm"; do
            echo "Destroying infrastructure for $role"
            export TF_VAR_role_name="$role"
            ls -la 
            cd "$BASE_DIR/tools-infra/terraform"      # Always reset to the correct directory
            pwd
            ls -la 
            echo $role
            cd ..
            # terraform destroy -auto-approve
            cd - > /dev/null                       # Move back to the original working directory
          done