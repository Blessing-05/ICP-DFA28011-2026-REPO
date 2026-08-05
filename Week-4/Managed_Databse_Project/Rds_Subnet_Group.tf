resource "aws_db_subnet_group" "rds_db" {
  subnet_ids = [ aws_subnet.private_subnet1.id, aws_subnet.private_subnet2.id ]
  name = "icp-db-subnet-group"
  description = "Subnet Group for rds multi-az"

  tags = {
    Name = "RDS Subnet Group"
  }
}