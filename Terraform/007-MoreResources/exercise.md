# Environments to configure

1) 
- 1 public subnet connected to the default VPC 
- 3 EC2s using ubuntu 18.04 and a new key pair allowing ssh connection from the setup VM 

2) 
- A VPC with IGW and two subnets

3) 
- 2 Subnets in the default VPC and a subnet group 
- RDS using the subnet group
- EC2 that can connect to the RDS

4) 
- A Security group with ingress ports 80, 22, 3306, 123 open
- An EC2 with this security group assigned to it

