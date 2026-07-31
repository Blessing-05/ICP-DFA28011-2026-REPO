##1. Creating the Public subnets
resource "aws_subnet" "Public_Subnet1" {
  vpc_id = aws_vpc.ICP-VPC.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public_Subnet1"
  }
}

resource "aws_subnet" "Public_Subnet2" {
  availability_zone = "us-east-1b"
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.ICP-VPC.id
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_Subnet2"
  }
}

##2. Creating the Private Subnets
resource "aws_subnet" "Private_Subnet1" {
    availability_zone = "us-east-1a"
    cidr_block = "10.0.3.0/24"
    vpc_id = aws_vpc.ICP-VPC.id
    map_public_ip_on_launch = false

    tags = {
      Name = "ICP_Private_Subnet1"
    }
}

resource "aws_subnet" "Private_Subnet2" {
  availability_zone = "us-east-1b"
  vpc_id = aws_vpc.ICP-VPC.id
  cidr_block = "10.0.4.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "ICP_Private_Subnet_2"
  }
}