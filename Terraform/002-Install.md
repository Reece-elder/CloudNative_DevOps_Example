## Prerequisites

- AWS Programmatic User
- Setup Ubuntu Linux VM created manually 
- Policies and permissions to create resources
*Diagram* 

## Install Terraform Script

// updating the apt store
sudo apt-get update 

// install unzip and wget
sudo apt install -y unzip wget

// grab latest linux 64 from https://www.terraform.io/downloads.html

// using wget to download from the link above
wget https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_linux_amd64.zip

// unzipping the .zip file downloaded
unzip terraform_*_linux_*.zip

// installing (by moving to /user/local/bin) terraform
sudo mv terraform /usr/local/bin

// Checking terraform is installed
terraform --version

## Install AWS CLI 

https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

MAKE SURE YOU INSTALL AWS OUTSIDE OF YOUR .git REPOSITORY

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version 

## Set up CLI profile

// Add access key, secret access key, eu-west-1 and JSON
aws configure

// Check the profile has been added 
aws profile
