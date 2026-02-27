variable "cidr_block" {
  description = "vpc cidr"
  type = string
}
variable "vpc_name"{
  description = "vpc name"
  type = string
}
variable "internet_gateway_name"{
  description = "gateway name"
  type = string
}
# variable "is_vpc_enable" {
#   description = "vpc to enable"
#   type = number
# }
variable "vpc_count" {
  description = "vpc count"
  type = number
}
variable "is_gateway_enable"{
  description = "gateway to enable"
  type = number
}
variable "gateway_count"{
  description = "gateway count"
  type = number
}
variable "is_public_subnet_enable"{
  description = "public subnet enable"
  type = number
}
variable "public_subnet_count"{
  description = "public subnet count"
  type = number
}
variable "subnet_cidr1"{
  description = "public subnet count"
  type = string
}
# variable "public-subnet-1"{
#   description = "public-subnet-1"
#   type = string
# }
variable "subnet_name1" {
  description = "subnet_name1"
  type = string
}
# variable "route_table" {
#   description = "route_table_name"
#   type = string
# }
# variable "public_route" {
#   description = "route_table_name"
#   type = string
# }
variable "route_table_name" {
  description = "route_table_name"
  type = string
}
variable "is_rt_enable" {
  description = "enable route"
  type = number
}
variable "rt_count" {
  description = "enable route"
  type = number
}
variable "is_rta_enable" {
  description = "enable route association"
  type = number
}
variable "rta_count" {
  description = "rta count"
  type = number
}
variable "is_aws_security_group_enable"{
  description = "enable sg"
  type = number
}
variable "security_group_count"{
  description = "sg count"
  type = number
}


#  Instance

# ec2 instance
variable "is_instance_enabled" {
  description = "instance enabled"
  type = number
}
variable "is_key_pair_enabled" {
  description = "key pair enabled"
  type = number
}
variable "ec2_image" {
  description = "image"
  type = string
}
variable "aws_instance_type" {
  description = "instance type"
  type = string
}
# variable "subnet_id" {
#   description = "subnet-id"
#   type = number
# }
variable "instance_count" {
  description = "instance count"
  type = number
}
variable "instance_name" {
  description = "instance_name"
  type = string
}


# security group
variable "is_vpc_enable" {
  description = "is_vpc_enable"
  type = number
}
# variable "is_aws_security_group_enable" {
#   description = "is_aws_security_group_enable"
#   type = number
# }

# variable "security_group_count" {
#   description = "security_group_count"
#   type = number
# }

variable "security_group_name" {
  description = "security_group_name"
  type = string
}
variable "from_port1" {
  description = "from_port1"
  type = number
}
variable "to_port1" {
  description = "to_port1"
  type = number
}
variable "from_port2" {
  description = "from_port2"
  type = number
}
variable "to_port2" {
  description = "to_port2"
  type = number
}
variable "public_route" {
  description = "public_route"
  type = string
}
variable "key_name" {
  description = "key_name"
  type = string
}
variable "public-subnet-id" {
  description = "public-subnet-id"
  type = string
}