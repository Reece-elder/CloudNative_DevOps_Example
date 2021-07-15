# Data Types in HCL

Types of data:
- Strings
- Numbers
- Boolean
- Lists
- Maps

When not defining the variable with type the default is a String
But still good practice to define the variable

Most variables will be strings
"name"
"ami-5c1c61c68cas60" etc. 

variable "name" {
    default = "im a string"
    type = "string"
}

variable "version" {
    default = "2.2"
    type = "number"
}

variable "assign_ip" {
    default = true
    type = "boolean"
}

When creating lists, maps or other objects do not use the type

variable "security_group_ids" {
    default = ["sg-55610", "sg-fewfe153"]
} 

variable "amiObject" {
    default = {
        "eu-west-1" = "ami-fewwfefew"
        "eu-west-2" = "ami-631f6wef1"
    }
}

Exercise - Create another EC2 this time defining 

