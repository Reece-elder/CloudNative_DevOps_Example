# Creating an EC2 that connects to the default VPC / subnets

# search terraform aws ec2 
# open up new tab to ec2 aws 
# grab ami (show where it is) (specify ami is different depending on region)

# ami-0943382e114f188e8

resource "aws_instance" "firstEC2" {
    ami = "ami-0943382e114f188e8"
    instance_type = "t2.micro"
}

# All AWS resrouces begin with aws_
# The 2nd label is the name I gave it

# This resource can now be references as aws_instance.firstEC2

// Exercise - Create an ec2 of the size t2.micro and another of size t2.small

# Creating the resources 

# terraform fmt - formats the file(s)
# terraform init - initiailises the files/modules
# terraform plan - creates a plan of what will be created
# terraform apply - applies the current configuration to create resources
# * terraform destroy - detroys all of the resources

#* Exercise  Deploy your ec2s you created to AWS