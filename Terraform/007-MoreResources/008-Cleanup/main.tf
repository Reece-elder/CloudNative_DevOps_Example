resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
        Project = var.project
    }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
      Project = var.project
  }
}

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

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
      cidr_block = var.open_internet
      gateway_id = var.gateway_id
  }
}

resource "aws_route_table_association" "route_a" {
subnet_id = var.subnet_a_id
route_table_id = var.route_table_id
}

resource "aws_route_table_association" "route_b" {
subnet_id = var.subnet_b_id
route_table_id = var.route_table_id
}

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