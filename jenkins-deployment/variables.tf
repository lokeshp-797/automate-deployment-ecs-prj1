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
variable "is_vpc_enable" {
  description = "vpc to enable"
  type = number
}
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
variable "public_route" {
  description = "route_table_name"
  type = string
}
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
