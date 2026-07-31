resource "aws_security_group" "my_web_sg" {
  vpc_id = aws_vpc.ICP-VPC.id
  description = "Allow HTTP,HTTPS,SSH"
  name = "ICP-WEB-SG"

  ingress {
    from_port = 80
    to_port = 80
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow HTTP Traffic"
    protocol = "tcp"
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow https"
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow ssh"
  }

  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    to_port = 0
    protocol = "-1"
    description = "Allow all outbound traffic"
  }
}

