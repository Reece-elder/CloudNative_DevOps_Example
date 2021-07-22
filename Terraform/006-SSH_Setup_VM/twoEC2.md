# Two EC2s

What about creating two EC2s that can talk to eachother? 

         |-- prodVM 
Setup VM |        ⇵ - talk to each other
         |-- testVM 

1) Create the two VMs with the ssh key from SetupVM 
2) SSH to prodVM 
3) ssh-keygen 
4) Copy the public key to a notepad 
5) exit
6) SSH to testVM 
7) add copied key to authorized_files 
8) exit
9) ssh to prodvm
10) ssh to testvm
11) exit exit