# Creating a security group for our EC2

resource "aws_security_group" "default" {
  name = var.default_name
  description = var.default_desc
  vpc_id = var.vpc_id

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [var.open_internet]
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.open_internet]
  }

  tags = {
    "Project" = var.project
  }

}

# Exercise - Create your own Security Group and add a second ingress rule to allow port 80