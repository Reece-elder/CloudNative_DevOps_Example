# Terraform uses Hashicorp Confoguration Language (HCL)
# Describe infrastructure in a concise way
# It describes an intended goal rather than how to achieve that goal

# Uses BLOCKS

# <block_type> "<label1>" "<label2>" {
#     Body of block
#     <identifier> = <value> # Argument <Key Value Pairs>
# }

# Blocks are simply containers for aguments, blocks have a type and labels 
# which other Terraform and other blocks use to know what block does what


# * File Structure
# terraform finds all files ending in .tf and brings them all into one file to run
# Good practice to create a 'main.tf' and write commands there

provider "aws" {
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

# Exercise - Create a main.tf and add the provider block to your file

