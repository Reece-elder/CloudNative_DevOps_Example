resource "aws_instance" "example" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key
  subnet_id = var.subnet_id
  tags = {
    Name = var.name
  }
}