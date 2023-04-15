#!bin/bash

#created by: https://github.com/fury999io/

user=$(whoami)
wget -O mvd.tar.xz https://mullvad.net/en/download/browser/linux64/latest
tar -xf mvd.tar.xz
sudo mv mullvad-browser /opt
rm mvd.tar.xz
cd /opt/mullvad-browser
./start-mullvad-browser.desktop --register-app
echo "Do you want to create a desktop shortcut? (Y/n)"
read resp
if [[ "$resp" == "y" || "$resp" == "Y" ]]; then
	sudo cp start-mullvad-browser.desktop /home/$user/Desktop
fi

