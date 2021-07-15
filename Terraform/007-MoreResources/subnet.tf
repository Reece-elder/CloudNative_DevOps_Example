# Connecting an EC2 to a created Subnet 

resource "aws_instance" "firstVM" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id

  tags = {
    "Name" = var.name
  }
}

variable "ami_id" {

}

# Value of subnet variable is the value of the subnets id 
variable "subnet_id" {
  default = aws_subnet.public_a.id
}


# Use Terraform subnet docs to grab info
# Subnet id is used to populate variable "subnet_id"

# Check the available cidr blocks (172.31.48.0/20)

resource "aws_subnet" "public_a" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_a
    availability_zone = var.av_Zone
    map_public_ip_on_launch = var.public_ip
    tags = {
      "Name" = var.name
    }
}

variable "vpc_id" {
  default = ""
}

# Exercise - Create a subnet and connect an ec2 to it 





