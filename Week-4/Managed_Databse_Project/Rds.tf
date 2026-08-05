resource "aws_db_instance" "mysql_db" {
  ##Multi AZ & Networking
  vpc_security_group_ids = [ aws_security_group.rds_sg.id ]
  multi_az = true
  publicly_accessible = false
  db_subnet_group_name = aws_db_subnet_group.rds_db.name

  ##Credential and DB Info
  username = "Blessing_admin"
  password = "Blessing171819"
  db_name = "ICPRDSDB"
  engine = "MySQL"
  engine_version = "8.0"
  instance_class = "db.t4g.micro"
  port = 3306

  ##Storage
  allocated_storage = 40
  max_allocated_storage = 100
  storage_type = "gp3"

  ##safety settings
  skip_final_snapshot = true
  deletion_protection = false

  # ###Encryption
  # storage_encrypted = true
  # kms_key_id = aws_kms_key.my_key.arn

  ##Backup
  backup_window = "02:00-03:00" #prefered time for automated backup
  backup_retention_period = 14 #keep automated backup for 14days
  maintenance_window = "Tue:04:00-Tue:05:00" ##day and time for maintenance

  tags = {
    Name = "ICP-RDS-DB-MySQL"
  }


}