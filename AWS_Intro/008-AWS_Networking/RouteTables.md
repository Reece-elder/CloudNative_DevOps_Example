# Route Tables

Table of rules (routes) determine where traffic goes from and to where
Each Subnet must be associated with a Route Table, multiple subnets connect to the same route table

Each VPC comes with a default route table you can modify

## Tutorial

- vpc
- Create Route Table
- Name and select VPC to connect to
- Click Create Route Table
- Select Route Table and click 'Edit Routes'
- Create a route w/ 
    - Destination: 0.0.0.0/0 (Open internet)
    - Target: igw (your IGW)
- Save changes and go to 'Subnet Associations' within Route Table options
- Click on 'Edit Subnet Associations'
- Select all Subnets and click save associations


