# Prerequisites
2x EC2s on same VPC
Each EC2 has nginx installed
Each EC2 has port 22 and 80 open
Make sure both are in the same SG

sudo apt-get update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx

cd /var/www/html
sudo vim index.nginx-debian.html 
(
    use directional buttons to move cursor, press i to start typing
    When finished press 'esc' then ':wq'
)
change the <h1> in the body to say VM Number 1 
Do the same for the 2nd VM (but change to VM 2)

# Tutorial

- EC2 within AWS
- Scroll down to Load Balancing and click Load Balancers
- Create Load Balancer
- Classic Load Balancer
- Give a name and define the VPC
- Create a new SG 
- Click next on Security Settings
- On heakth Check change Ping Path to /
- Add your two EC2 instances
- Wait for load balancer to load (1 minute or so)
- Copy DNS name from description into url and click enter
- Refresh the page a few times 
- Copy the SG id from the Load Balancer
- Change the Source on port 80 of the EC2 Security group to this SG ID

# Exercise

Create a Classic Load balancer that balances between three different EC2s hosting nginx with a different HTML on each
