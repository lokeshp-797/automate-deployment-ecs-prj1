# project reference

https://github.com/vijaygiduthuri/AWS-ECS-Project/blob/main/ecs-terraform/modules/vpc_module/outputs.tf

# youtube reference

https://www.youtube.com/watch?v=qWI167QH0AM

# automate-deployment-ecs-prj1

using jenkins, terraform, github, html, js, aws - ec2, vpc, ecs

# or for plan

terraform plan -var-file="tfvars/dev.tfvars"

# or for apply

terraform apply -var-file="tfvars/dev.tfvars"

# Connect to ec2 instance

ssh -i "devops-test.pem" ubuntu@100.53.24.3

Install all dependencies
Jenkins
Terraform
AWS CLI
Trivy

#### Jenkins web page below

After installing dependencies above use below in browser:
http://100.53.24.3:8080/

systemctl start docker
systemctl enable docker
systemctl status docker

# Connect to jenkins

Get password from below:
cat /var/lib/jenkins/secrets/initialAdminPassword

Install below in jenkins:
Jenkins => manage jenkins => available plugins
aws credentials
docker Commas
Docker pipeline
Docker API
docker-build-step
terraform
pipeline stage view

After installation restart jenkins

====
Manage jenkins => Tools =>
Add Terraform path
Get path from below command
which terraform

Add docker to choose from latest docker.io url

====
Add Credentials:
Create aws user and get accesskey and secretkey

##### Ansible install on mac

brew install ansible
sudo su
mkdir /etc/ansible/playbooks
cd /etc/ansible/playbooks

Should able to see below files:
ansible.cfg
hosts.yml
playbooks
roles

vim first.yml
Add below code

---

- name: “My first playbook”
  hosts: localhost
  tasks:
  - name: “test connectivity”
    ping:

# Run below command

anisble-playbook /root/ansible/first.yml

######

Open hosts file and add ec2 instance ipaddress of jenkins

#### commands to run below for ansible

ansible-playbook -i hosts.yml playbooks/instance_configure_jenkins.yml

Jenkins password from playbook output:
"msg": "Your Jenkins Initial Admin Password is: 1f93cc2b38fb4f87b0631ad676afad98"
