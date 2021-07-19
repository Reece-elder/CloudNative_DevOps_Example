variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    default = "vpc"
}

variable "project" {
    default = "TF_VPC"
}

variable "vpc_id" {
  default = aws_vpc.vpc.id
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

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "gateway_id" {
  default = aws_internet_gateway.igw.id
}

variable "subnet_a_id" {
    default = aws_subnet.public_a.id
}

variable "subnet_b_id" {
    default = aws_subnet.public_b.id
}

variable "route_table_id" {
    default = aws_route_table.route_table.id
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