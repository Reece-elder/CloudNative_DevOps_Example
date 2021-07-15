# First thing to create is the vpc

resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
        Project = var.project
    }
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    default = "vpc"
}

variable "project" {
    default = "TF_VPC"
}

// * Check VPC is in AWS Console

# Exercise - create a VPC

