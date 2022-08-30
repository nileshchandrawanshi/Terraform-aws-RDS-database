resource "aws_db_instance" "database" {
  allocated_storage   = 20
  engine              = var.engine_var
  engine_version      = var.version_var
  instance_class      = var.type_var
  name                = var.name_var
  username            = var.user_var
  password            = random_password.password.result
  skip_final_snapshot = true
}

resource "random_password" "password" {
  length           = 20
  special          = true
  override_special = "@Redhat123"
}
