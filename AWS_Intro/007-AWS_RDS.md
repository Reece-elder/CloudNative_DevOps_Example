# Create an RDS 
FREE TIER VERY IMPORTANT

- RDS
- Databases > Create Database
- Standard Create
- MySQL 5.7.34
- Free Tier
- Database Name
- Username and password
- 'Include previous generation classes' db.t2.micro IMPORTANT
- storage keep as default
- default VPC, subnet group
- Security group = default 
- AV Zone No preference
CHECK PRICE AT BOTTOM OF PAGE
- delete database - no snapshot

Exercise Create an RDS

# Connect to RDS

- Make sure database is in same Security group as RDS 
- Connect to EC2 
- sudo apt-get update
- sudo apt install mysql-client-core-5.7 
- mysql -h *rds url* -P 3306 -u *username* -p*password*
OR
- mysql -h *rds url* -P 3306 -u *username* -p
- enter password on next line 
- show databases;
- CREATE DATABASE new_database;

Exercise - Connect to RDS and create a new database