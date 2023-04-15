#!bin/bash

#created by: https://github.com/fury999io/

user=$(whoami)
cd /opt
sudo rm -r mullvad-browser
sudo rm /home/$user/.local/share/applications/start-mullvad-browser.desktop
rm /home/$user/Desktop/start-mullvad-browser.desktop

