# Variables

Variables are used to provide customisability and functionality to your config files. 
By changing from static hard coded values its easier to modify the environment quicker

Example:
 - Environment is 30 ec2 computers all connected to subnetA
 - Manager asked you to transfer them all to subnetB
 - ????

Use cases of variables: 
- Change multiple resources with one
- Security (dont push up variables)
- Variable precedence (different variables with different hierarchies)
- Allows resources to be interactive 