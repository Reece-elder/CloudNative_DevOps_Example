# Creating an EC2 to connect to this VPC

# Creating an EC2 key pair

resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key
  subnet_id = var.subneta_id
  vpc_security_group_ids = var.security_group_ids
  associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "value"
    Project = var.project
  }
}

resource "aws_key_pair" "prod_key" {
    key_name = "setup_key"
    public_key = var.public_key_value
}

variable "public_key_value" {
  
}

variable "ami_id" {
  
}

variable "instance_type" {
  
}

variable "key" {
  
}

variable "security_group_ids" {
  
}

variable "enable_public_ip" {
  
}

output "public_ip" {
  
}

# Exercise - Create an EC2 that connects to the VPC we've created and you can ssh into the VM 