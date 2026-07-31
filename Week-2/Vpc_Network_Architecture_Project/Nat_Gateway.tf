resource "aws_eip" "eip" {
  domain = "vpc"
  depends_on = [ aws_internet_gateway.IGW ]

  tags = {
    Name = "My_EIP"
  }
}

##Creating the Nat Gateway and allocating an Elastic Ip
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id = aws_subnet.Public_Subnet1.id

  depends_on = [ aws_internet_gateway.IGW ]

  tags = {
    Name = "ICP Nat Gateway"
  }
}