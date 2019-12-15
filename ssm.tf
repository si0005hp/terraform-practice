resource "aws_ssm_parameter" "db_username" {
  name        = "/db/username"
  value       = "root"
  type        = "String"
  description = "Database user"
}

resource "aws_ssm_parameter" "db_raw_password" {
  name        = "/db/password"
  value       = "uninitialized"
  type        = "SecureString"
  description = "Database password"

  lifecycle {
    ignore_changes = [value]
  }
}
