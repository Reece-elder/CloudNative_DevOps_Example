# Creating a Route table and route table associations

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
      cidr_block = var.open_internet
      gateway_id = var.gateway_id
  }
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "gateway_id" {
  default = aws_internet_gateway.igw.id
}

# Check AWS for route table
# Exercise - Create a route table

# Creating Route table associations 

resource "aws_route_table_association" "route_a" {
subnet_id = var.subnet_a_id
route_table_id = var.route_table_id
}

resource "aws_route_table_association" "route_b" {
subnet_id = var.subnet_b_id
route_table_id = var.route_table_id
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

# Exercise - Create route table associations