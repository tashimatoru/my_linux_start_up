# ssh(private key)

cd ~/
mkdir .ssh
chmod 700 .ssh
touch ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa



# I2C
sudo apt-get install -y i2c-tools

# python-smbus
sudo apt-get install -y python-smbus













# Docker
# Install some required packages first
sudo apt install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Get the Docker signing key for packages
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

# Add the Docker official repos
echo "deb [arch=armhf] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list

sudo apt install docker-ce

#sudo groupadd docker
#curl -sSL https://get.docker.com | sh
#sudo usermod -aG docker `whoami`
exec $SHELL -l
#docker --version



## Docker-compose
#
#cd ~/
#git clone https://github.com/docker/compose.git
#cd compose
#sudo docker build -t docker-compose:armhf -f Dockerfile.armhf .
#sudo docker run --rm --entrypoint="script/build/linux-entrypoint" -v $(pwd)/dist:/code/dist -v $(pwd)/.git:/code/.git "docker-compose:armhf"
#sudo cp dist/docker-compose-Linux-armv7l /usr/local/bin/docker-compose
#docker-compose --version
### remove
#cd ~/
#rm -rf compose/
