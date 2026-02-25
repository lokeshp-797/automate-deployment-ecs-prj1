resource "aws_vpc" "vpc" {
  count = "${var.is_vpc_enable == 1 ? var.vpc_count : 0 }"
  cidr_block = var.cidr_block
  tags = {
    name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gateway" {
  count = "${var.is_vpc_enable == 1 && var.is_gateway_enable == 1 ? var.gateway_count : 0 }"
  vpc_id = aws_vpc.vpc[count.index].id
  tags = {
    Name = var.internet_gateway_name
  }

}


resource "aws_subnet" "public-subnet-1" {
  count = "${var.is_vpc_enable == 1 && var.is_public_subnet_enable == 1 ? var.public_subnet_count : 0 }"
  vpc_id                  = aws_vpc.vpc[count.index].id
  cidr_block              = var.subnet_cidr1
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name1
  }
}

resource "aws_route_table" "route_table" {
  count = "${var.is_vpc_enable == 1 && var.is_gateway_enable == 1 && var.is_rt_enable == 1 ? var.rt_count : 0 }"
  vpc_id = aws_vpc.vpc[count.index].id
  route {
    cidr_block = var.public_route
    gateway_id = aws_internet_gateway.gateway[count.index].id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "route-table-association1" {
  count = "${var.is_vpc_enable == 1 && var.is_public_subnet_enable == 1 && var.is_rt_enable == 1 && var.is_rta_enable == 1 ? var.rta_count : 0 }"
  subnet_id      = aws_subnet.public-subnet-1[count.index].id
  route_table_id = aws_route_table.route_table[count.index].id
}

# resource "aws_security_group" "security_group" {
#   count = "${var.is_vpc_enable == 1 && var.is_aws_security_group_enable == 1 ? var.security_group_count : 0 }"

#   vpc_id = aws_vpc.vpc[count.index].id
#   ingress {
#     from_port = var.from_port1
#     to_port = var.to_port1
#     protocol = "tcp"
#     cidr_blocks = [var.public_route]
#   }

#   ingress {
#     from_port = var.from_port2
#     to_port = var.to_port2
#     protocol = "tcp"
#     cidr_blocks = [var.public_route]
#   }

#   egress {
#     from_port = 0
#     to_port = 0   
#     protocol = "-1"
#     cidr_blocks = [var.public_route]
#   }

#   tags = {
#     Name = var.security_group_name
#   }
# }