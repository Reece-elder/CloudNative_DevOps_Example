provider "aws" {
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

// Grabbing the .tf files from the EC2 module and bringing them here

// Changing the ec2_name variable at the module

module "first_ec2" {
  source = "./EC2"
  ec2_name = "added_by_module"
}

# Exercise - Create an EC2 module and in your main.tf call the module

// Creating two modules from the same source

module "second_ec2" {
  source = "./EC2"
  ec2_name = "second_name"
}

# Exercise - Create a 2nd EC2 module and output both of the ips


