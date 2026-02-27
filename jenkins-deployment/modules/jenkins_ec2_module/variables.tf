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
variable "is_aws_security_group_enable" {
  description = "is_aws_security_group_enable"
  type = number
}

variable "security_group_count" {
  description = "security_group_count"
  type = number
}

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

