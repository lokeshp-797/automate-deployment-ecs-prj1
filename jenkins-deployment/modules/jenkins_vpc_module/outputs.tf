output "vpc_id" {
  value = aws_vpc.vpc[*].id
}

output "public_subnet_id" {
  value = aws_subnet.public-subnet-1[*].id
}

output "route_table_id" {
  value = aws_route_table.route_table[*].id
}
