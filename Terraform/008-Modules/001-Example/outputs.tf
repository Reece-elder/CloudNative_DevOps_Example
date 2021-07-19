# Outputting the public IP from the EC2 module

// module.<module_name>.<output_name>

output "ec2_public_ip" {
  value = module.first_ec2.ec2_ip
}

// Creating a 2nd EC2 using modules

output "ec2_public_ip" {
  value = module.second_ec2.ec2_ip
}