resource "aws_kms_key" "my_key" {
  deletion_window_in_days = 7
  description = "Key for encrypting sensitive data"
  enable_key_rotation = true

  tags = {
    Name = "ICP-RDS-KMS-Key"
  }
}

resource "aws_kms_alias" "my_alias" {
  target_key_id = aws_kms_key.my_key.arn
  name = "alias/icp-rds-key"
}