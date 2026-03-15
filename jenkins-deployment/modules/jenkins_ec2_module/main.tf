
data "aws_vpc" "prj1-vpc" {
  filter {
    name = "tag:name"
    values = ["prj1-vpc"]
  }
}

# data "aws_subnet" "public-subnet" {
#   filter {
#     name = "tag:name"
#     values = ["prj1-subnet"]
#   }
# }



resource "aws_security_group" "security_group" {
  count = "${var.is_vpc_enable == 1 && var.is_aws_security_group_enable == 1 ? var.security_group_count : 0 }"

  vpc_id = data.aws_vpc.prj1-vpc.id
  ingress {
    from_port = var.from_port1
    to_port = var.to_port1
    protocol = "tcp"
    cidr_blocks = [var.public_route]
  }
  ingress {
    from_port = var.from_port2
    to_port = var.to_port2
    protocol = "tcp"
    cidr_blocks = [var.public_route]
  }

  egress {
    from_port = 0
    to_port = 0   
    protocol = "-1"
    cidr_blocks = [var.public_route]
  }

  tags = {
    Name = var.security_group_name
  }
}

resource "aws_instance" "jenkins-instance" {
    count = "${var.is_instance_enabled == 1 && var.is_key_pair_enabled == 1 ? var.instance_count : 0}"
    ami = var.ec2_image
    instance_type = var.aws_instance_type
    subnet_id = var.public-subnet-id
    security_groups = [aws_security_group.security_group[count.index].id]
    key_name = var.key_name # already created manually

    tags = {
        Name = var.instance_name
    }
    lifecycle {
  prevent_destroy = true
  # Prevents specific changes from triggering a recreation
    ignore_changes = [
      ami,
      user_data,
    ]
}
}

# Stop the instance
# resource "aws_ec2_instance_state" "test_state_stopped" {
#   # count       = length(aws_instance.jenkins-instance) 
#   instance_id = var.stop_jenkins_instance_id
#   state       = "stopped"
# }