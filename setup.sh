sudo apt update
sudo apt upgrade -y

echo "---------INSTALLING ROBOT HAT----------"
cd ~/
git clone -b v2.0 https://github.com/sunfounder/robot-hat.git
cd robot-hat
sudo python3 setup.py install
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
cd ~/
sudo rm -rf picar-x

pip install python-socketio
