sudo apt update
sudo apt upgrade -y
sudo apt install -y git python3-pip python3-setuptools python3-smbus
pip install python-socketio

echo "---------INSTALLING ROBOT HAT----------"
cd ~/
git clone -b v2.0 https://github.com/sunfounder/robot-hat.git
cd robot-hat
sudo python3 install.py
cd ~/
sudo rm -rf robot-hat

echo "---------INSTALLING VILIB----------"
cd ~/
git clone -b picamera2 https://github.com/sunfounder/vilib.git
cd vilib
sudo python3 install.py
cd ~/
sudo rm -rf vilib

echo "---------INSTALLING PiCar-X----------"
cd ~/
git clone -b v2.0 https://github.com/sunfounder/picar-x.git --depth 1
cd picar-x
sudo python3 setup.py install
sudo bash i2samp.sh
cd ~/
sudo rm -rf picar-x

