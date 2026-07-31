resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.ICP-VPC.id
  
  tags = {
    Name = "ICP_Internet_Gateway"
  }
}