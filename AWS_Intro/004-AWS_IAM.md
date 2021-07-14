# Theory

Identity Access Management IAM allows you to access AWS services and resources
Create and manage AWS users and groups, allow permissions for AWS resources

Users - Assigned to people, username and password credentials, polices
Roles - Assigned policies but no credentials, users can be assigned roles
Groups - Add permissions to the group, add users to the group

IAM configures all of these settings and is generally accessible from the root account to create sub accounts

# Tutorial 

## Basic User
Create a user with AWS Management console access
Give EC2 policies to user
Add tags

Exercise - Create a user with EC2 and management console access

## Roles
Create a role with IAM id
Add RDS policy to role
Add name to role

Exercise - Create a role and add the EC2 to the role

## Group
Create a group 
Add the user to the group
Add s3 access to the group

Exercise - Create a group and add the user to the group

## Programmatic user access
Create a user with programmatic access 
Install AWS CLI - https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html 

download the CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

install unzip
sudo apt install unzip

unzip the cli 
unzip awscliv2.zip

install the cli
sudo ./aws/install

Check the cli is installed
aws --version

// Add access key, secret access key, eu-west-1 and JSON
aws configure - add the access and secret access key 

aws configure --profile check the profile

Exercise - In groups each person should create a programmatic user that everyone should be able to log into 

