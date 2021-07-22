# What will we want to specify in our EC2?
# - ami
# - type 
# - VPC
# - Subnet
# - Auto assign public IP
# - Key Pair
# - Security Group
# - tags

resource "aws_instance" "specificEC2" {
    ami = "ami-0943382e114f188e8"
    instance_type = "t2.micro"
    subnet_id = ""
    associate_public_ip_address = ""
    key_name = ""
    vpc_security_group_ids = [""]

    tags = {
        Name = "Specific_EC2"
    }
}

# * Exercise - modify your EC2 to be more specific and specify the following
# - ami
# - instance type
# - subnet_id
# - associate_public_ip_address
# - key_name