sudo apt update
sudo apt upgrade -y
sudo apt install -y python3 python3-pip python3-venv git python3-setuptools python3-smbus


echo "---------INSTALLING VSCODE----------"
cd ~/
mkdir downloads
cd downloads
# download vscode https://go.microsoft.com/fwlink/?LinkID=760868
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
sudo apt install -y ./vscode.deb


echo "---------INSTALLING ROBOT HAT----------"
cd ~/
git clone -b v2.0 https://github.com/sunfounder/robot-hat.git
cd robot-hat
sudo python3 setup.py install

echo "---------INSTALLING VILIB----------"
cd ~/
git clone -b picamera2 https://github.com/sunfounder/vilib.git
cd vilib
sudo python3 setup.py install

echo "---------INSTALLING PiCar-X----------"
cd ~/
git clone -b v2.0 https://github.com/sunfounder/picar-x.git --depth 1
cd picar-x
sudo python3 setup.py install