provider "aws" {
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

module "first_subnet" {
  source = "./Subnet"
  sub_name = "first_subnet"
#   cidr_block = ""
}

// Grabbing the output 'subnet_id' from the module first subnet
module "first_ec2" {
  source = "./EC2"
  subnet_id = module.first_subnet.subnet_id
}

# Exercise - Create two modules (EC2 and Subnet) and make the EC2 use the value of the subnet module

module "second_subnet" {
  source = "./Subnet"
  sub_name = "second_subnet"
#   cidr_block = ""
}

module "second_ec2" {
  source = "./EC2"
  subnet_id = module.second_subnet.subnet_id
}