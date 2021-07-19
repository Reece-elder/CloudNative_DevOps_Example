# Creating 2 subnets that connects to the VPC
# Using the vpc_id variable we've already created

resource "aws_subnet" "public_a" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_a
  availability_zone = var.av_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.sub_a_name
    Project = var.project
  }
}

resource "aws_subnet" "public_b" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_b
  availability_zone = var.av_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.sub_b_name
    Project = var.project
  }
}

variable "cidr_a" {
  default = "10.0.1.0/24"
}

variable "cidr_b" {
  default = "10.0.2.0/24"
}

variable "av_zone" {
  default = "eu-west-1a"
}

variable "sub_a_name" {
  default = "sub_a"
}

variable "sub_b_name" {
  default = "sub_b"
}

# Check subnets in AWS

# Exercise - create two subnets that use your VPC