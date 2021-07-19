resource "aws_subnet" "public" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_a
  availability_zone = var.av_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.sub_name
  }
}