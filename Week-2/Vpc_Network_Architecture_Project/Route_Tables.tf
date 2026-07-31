##1. Creating The Public Route Table
resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.ICP-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "Public_RT"
  }
}

resource "aws_route_table_association" "association_pub_1" {
  route_table_id = aws_route_table.Public_RT.id
  subnet_id = aws_subnet.Public_Subnet1.id
}

resource "aws_route_table_association" "associate_pub_2" {
    route_table_id = aws_route_table.Public_RT.id
    subnet_id = aws_subnet.Public_Subnet2.id
}

##Creating the Private Route Table
resource "aws_route_table" "Private_RT" {
  vpc_id = aws_vpc.ICP-VPC.id
  route {
    nat_gateway_id = aws_nat_gateway.nat.id
    cidr_block = "0.0.0.0/0"
  }

  tags = {
    Name = "Private_RT"
  }
}

resource "aws_route_table_association" "associate_priv_1" {
  route_table_id = aws_route_table.Private_RT.id
  subnet_id = aws_subnet.Private_Subnet1.id
}

resource "aws_route_table_association" "associate_priv_2" {
  route_table_id = aws_route_table.Private_RT.id
  subnet_id = aws_subnet.Private_Subnet2.id
}