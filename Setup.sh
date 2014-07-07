cd /home/ubuntu
sudo apt-get update
sudo apt-get install pulseaudio git
git clone https://github.com/walac/pyusb
cd /home/ubuntu/pyusb
sudo python setup.py install
chmod 755 /etc/Car/android-usb-audio.py
chmod 755 /etc/Car/phone_docked.sh
cp /etc/Car/dock.rules /etc/udev/rules.d 
cp /etc/Car/pulseaudio2 /etc/init
cp /etc/Car/wpa_supplicant.conf /etc
rm -rf /etc/network/interfaces
cp /etc/Car/interfaces /etc/network



