# lineaje-dev
This is Sample Terraform Code for ECS with EC2 

Pre-Requisities

1. AWS ec2 instance launch ec2 with t3.micro > ubuntu 20.04
2. Terraform > https://computingforgeeks.com/how-to-install-terraform-on-ubuntu/ 
3. python >  sudo apt install python3-pip
4. awscli > sudo apt install awscli
5. add access key to $HOME/.aws/config
6. Docker installation
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add the repository to Apt sources:
echo   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
 "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker version
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

>>ssh key-gen
>>cat /home/ubuntu/.ssh/id_rsa.pub   (copy and paste this code to var.tf public_ec2_key) 
