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

ssh -i "devops-test.pem" ubuntu@44.222.125.189

http://44.222.125.189/

Install all dependencies
Jenkins
Terraform
AWS CLI
Trivy

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
