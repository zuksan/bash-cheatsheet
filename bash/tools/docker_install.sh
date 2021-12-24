# ref: https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

##read -p "Enter print > " print
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# INSTALL DOCKER CE
sudo apt-get update
# Install the latest version of Docker CE and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io
# Verify that Docker CE is installed correctly by running the hello-world image
# sudo docker run hello-world