# Project Structure 

- Diagram demonstrating setup vm structure 
- Multiple VMs 

Home PC > AWS Console > Setup/Terraform VM > New VM 

How do we allow Setup VM to ssh into the New VM? 
We access the AWS Console through the home pc, how can we access the downloadable key pairs from AWS Console? 

Method:
- Create a key pair in the setup VM 
- Either : 
    - Upload the public key to AWS Console through the GUI
    - Create a key pair with that value through TF (better version)
- When creating a new VM set the key_pair to be that key
- SSH to the new VM from the setup VM

?? How can we connect to this Production VM from our home PC ??
?? How can 