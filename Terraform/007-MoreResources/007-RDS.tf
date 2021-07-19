# Creating an RDS to add to the vpc 

resource "aws_db_instance" "prodDB" {
  allocated_storage      = 10
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = var.db_name
  username               = var.rds_username
  password               = var.rds_password
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = "true"
  db_subnet_group_name   = var.db_subnet_gp_name
  vpc_security_group_ids = var.security_group_ids
}

# Creating a subnet group

resource "aws_db_subnet_group" "default" {
  name       = "subnet group"
  subnet_ids = [var.subnet_a_id, var.subnet_b_id]

  tags = {
    Name = "Subnet Group"
  }
}

variable "db_subnet_gp_name" {
  default = aws_db_subnet_group.default
}

# Exercise - Create an RDS and a subnet group

