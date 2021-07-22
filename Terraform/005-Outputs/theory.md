# Outputs

Outputs retrieve attributes created during the process of creating resources

Example - We need a VMs public IP to do anything with it.. We can't get it without going to AWS
- If we can't access without AWS GUI, how would any automation be able to do it? 

Outputs are similar to variables

output <"name of output"> {
    value = <resource_type>.<resource_name>.<attribute>
}

Use terraform docs to see what values can be outputted

output "public_ip" {
    value = aws_instance.example.public_ip
}

Exercise 
- Create a new EC2 using variables and output the public ip 
- ssh to this VM without going to the AWS GUI

