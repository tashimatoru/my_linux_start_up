# ssh(private key)

cd ~/
mkdir .ssh
chmod 700 .ssh
touch ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa


# Docker
sudo groupadd docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker `whoami`
exec $SHELL -l
docker --version



# Docker-compose

cd ~/
git clone https://github.com/docker/compose.git
cd compose
sudo docker build -t docker-compose:armhf -f Dockerfile.armhf .
sudo docker run --rm --entrypoint="script/build/linux-entrypoint" -v $(pwd)/dist:/code/dist -v $(pwd)/.git:/code/.git "docker-compose:armhf"
sudo cp dist/docker-compose-Linux-armv7l /usr/local/bin/docker-compose
docker-compose --version
## remove
cd ~/
rm -rf compose/
