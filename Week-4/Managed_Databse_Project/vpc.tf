##1. Creating the custom VPC
resource "aws_vpc" "rds_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "ICP-RDS-VPC"
  }
}

##2. Creating the private subnet 
resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.rds_vpc.id
  availability_zone = "us-east-1a"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "ICP-Private-Subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = aws_vpc.rds_vpc.id
  availability_zone = "us-east-1b"
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "ICP-Private-Subnet2"
  }
}