set -xe

sudo apt-get update -y
sudo apt-get install -y wget unzip

wget https://downloads.tuxfamily.org/godotengine/3.2.3/Godot_v3.2.3-stable_linux_server.64.zip
unzip Godot_v3.2.3-stable_linux_server.64.zip && rm Godot_v3.2.3-stable_linux_server.64.zip
sudo mv Godot_v3.2.3-stable_linux_server.64 /usr/local/bin/godot

cp start-server.sh /usr/src

sudo cp game.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start game.service
sudo systemctl enable game.service

