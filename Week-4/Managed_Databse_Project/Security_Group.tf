##Creating web app security group
resource "aws_security_group" "web-sg" {
  vpc_id = aws_vpc.rds_vpc.id
  name = "Web-SG"
  description = "Security group for web"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Web-SG"
  }
}


resource "aws_security_group" "rds_sg" {
  name        = "ICP-RDS-SG"
  description = "Security group for RDS instance"
  vpc_id      = aws_vpc.rds_vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [ aws_security_group.web-sg.id ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = "ICP-RDS-SG"
  }
}