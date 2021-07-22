# OpenSSH

Open SSH creates an ssh key pair in your local folder .ssh folder

cd ~/.ssh && ls

No keys here, just authorized_keys

cat authorized_keys - shows the public ssh key from my laptop

## Plan
1) Create SSH keys
2) Pass public SSH to new VM (created through terraform)
3) Connect from THIS machine to new VM

## Creating SSH keys
//
sudo apt-get update

// Creates the key pair
ssh-keygen

// Choose location (enter for default)
// Choose password (enter for blank)
// Repeat password (enter for blank)
// key created!

## Passing the key to the VM

resource "aws_key_pair" "setupVM" {
    key_name = "setup_key"
    public_key = "public key"
}

resource "aws_instance" "exampleVM" {
    ami = ""
    instance_type = ""
    key_name = ""
    tags = {
        Name = ""
    }
}

output "public_ip" {
    value = aws_instance.exampleVM.public_ip
}

## Connection to new VM

ssh -i ~/.ssh/id_rsa <public_ip>

Exercise - SSH to a created EC2 from your Terraform VM without using the aws console

