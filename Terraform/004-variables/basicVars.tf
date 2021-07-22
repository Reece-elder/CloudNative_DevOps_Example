provider "aws" {
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

# Basic EC2 resource

resource "aws_instance" "specificEC2" {
    ami = "ami-0943382e114f188e8"
    instance_type = "t2.micro"
    associate_public_ip_address = ""

    tags = {
        Name = "Specific_EC2"
    }
}

# Variable Structure 

# <type> "<label>" {
#     Block Body
#     <identifier> = <expression>
# }

# the label doesnt matter, it can be called whatever (good to relate tho)

variable "ami_variable" {
    # Type is the type of variable (string, number etc)
    type = "string"
    # Default is the value of variable
    # If you log out "ami" you'd get "ami-0943382.."
    default = "ami-0943382e114f188e8"
    description = "a brief description of what the variable is for"
}

variable "instance_type" {
    type = "string"
    default = "ami-0943382e114f188e8"
}

variable "public_ip" {
    type = "string"
    default = "ami-0943382e114f188e8"
}

variable "name" {
    type = "string"
    default = "ami-0943382e114f188e8"
}

resource "aws_instance" "EC2_Vars" {
    ami = var.ami_variable
    instance_type = var.
    associate_public_ip_address = var.

    tags = {
        Name = var. 
    }
}

Exercise - Create a new EC2 passing in variables instead of static data