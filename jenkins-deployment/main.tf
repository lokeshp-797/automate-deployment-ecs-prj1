# module "ec2-instance" {
#   source = "../modules/jenkins_ec2_module"
# }
module "vpc" {
  source = "./modules/jenkins_vpc_module"
  cidr_block = var.cidr_block
  vpc_name = var.vpc_name
  internet_gateway_name = var.internet_gateway_name
  is_vpc_enable = var.is_vpc_enable
  vpc_count = var.vpc_count
  is_gateway_enable = var.is_gateway_enable
  gateway_count = var.gateway_count
  is_public_subnet_enable = var.is_public_subnet_enable
  public_subnet_count = var.public_subnet_count
  subnet_cidr1 = var.subnet_cidr1
  # public-subnet-1 = var.public-subnet-1
  subnet_name1 = var.subnet_name1
  # route_table = var.route_table
  public_route = var.public_route
  route_table_name = var.route_table_name
  is_rt_enable = var.is_rt_enable
  rt_count = var.rt_count
  is_rta_enable = var.is_rta_enable
  rta_count = var.rta_count
  is_aws_security_group_enable = var.is_aws_security_group_enable
  security_group_count = var.security_group_count

}