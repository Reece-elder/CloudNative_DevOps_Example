# Creating an IGW to connect to our VPC

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
      Project = var.project
  }
}

# Creating a variable for the VPC id
variable "vpc_id" {
  default = aws_vpc.vpc.id
}

# Check IGW on AWS

# Exercise - Create an IGW

