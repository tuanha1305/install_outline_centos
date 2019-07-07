echo "Installing wget *****"
yum install wget -y
echo "Wget installed !"
echo "Installing docker *****"
curl -sS https://get.docker.com/ | sh
echo "Docker installed !"
echo "Installing outline vpn *****"
bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
echo "Open random port firewall"
firewall-cmd --zone=public --add-port=1024-65535/tcp  --permanent
firewall-cmd --reload
echo "done !"