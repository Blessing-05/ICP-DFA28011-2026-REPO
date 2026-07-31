output "vpc_id" {
  value = aws_vpc.ICP-VPC.id
  description = "My VPC Id"
}

output "pub_subnet_id" {
  value = [aws_subnet.Public_Subnet1.id, aws_subnet.Public_Subnet2.id]
  description = "Public Subnets IDs"
}

output "private_subnet_id" {
  value = [aws_subnet.Private_Subnet1.id, aws_subnet.Private_Subnet2.id]
  description = "Private Subnets IDs"
}

output "igw_id" {
  value = aws_internet_gateway.IGW.id
  description = "IGW ID"
}

output "nat_gateway_eip_id" {
  description = "Nat Gateway ID"
  value = aws_eip.eip.id
}

output "security_group_id" {
  value = aws_security_group.my_web_sg.id
}