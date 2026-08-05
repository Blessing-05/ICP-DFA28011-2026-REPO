output "vpc_id" {
  value = aws_vpc.rds_vpc.id
  description = "The RDS Vpc id"
}

output "rds_db_name" {
  value = aws_db_instance.mysql_db.db_name
  description = "Your DB Name"
}

output "rds_db_add" {
  value = aws_db_instance.mysql_db.address
  description = "Your rds address"
}

output "rds_db_endpoint" {
  value = aws_db_instance.mysql_db.endpoint
  description = "Your rds endpoint"
}