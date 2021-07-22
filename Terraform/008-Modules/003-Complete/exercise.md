Using the Modules exercises earlier create a configuration using modules for the following specifications:

- VPC with a CIDR Block 10.0.0.0/16
- IGW 
- 2x public subnets
- Route Table with route table Associations for subnets
- Security group open on ports 22, 80 to all IPs
- 2x EC2s assigned to security group, each EC2 assigned to a different subnet
- Key pair created from setup VM, assigned to EC2s created
- Outputs the IP addresses

Stretch Goal 
- Add an RDS
