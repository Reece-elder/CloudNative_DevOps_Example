

resource "aws_instance" "testEC2" {
    ami = var.ami_variable
    instance_type = var.instance_type
    associate_public_ip_address = var.public_ip

    tags = {
        Name = var.name1
    }
}

variable "name1" {
    type = "string"
}

# x4 for each variable

# * Creating on terraform apply

# If no default is provided the variable will be created upon terraform plan / apply


# exercise - Create new variables, remove the defaults and add them when it spins up 
# Bonus exercise - what are the issues with this?

#* Environment Variables

# Defining variables as environment variables lets them be read by the file
# Env vars must be named TF_VAR_<name> in order for Terraform to read

#? export TF_VAR_name="environment Variable"
#? terraform apply

# exercise - Create new variables, remove the defaults and add them when it spins up 
# Bonus exercise - what are the issues with this?

#* Automated .tfVars files 

# Variables saved in a file called: 
#? terraform.tfVars
# or ending in
#?.auto.tfvars
# will be automatically loaded into the file

name_autoVars = "automatic Variables"

#* tfvars files

# variables stored in a file ending in .tfvars can be loaded in with terraform apply

# testing.tfvars
name_varsFile = "varsFile"

# terraform apply -var-file="testing.tfvars"

# Exercise - Create two tfvars files (one automatic and the other not) and specify one of them.
# Make sure the two var files are referencing two values in your ec2

#* Directly referencing the variable

# within the command you can specify specific variables to use and their values

# -var <variable name> = <variable value>

# terraform apply -var name="direct Variable"


#? Hierarchy of Variables

When a variable is defined multiple times the value is set to the highest precedent definition

1) Specified options with -var or -var-files 
2) Automated .tfvars files
3) Env Variables
4) Default values

When variables are defined within same level (i.e -var and -varfiles) the last one specified takes precedent

