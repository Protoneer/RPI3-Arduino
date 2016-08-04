#!/bin/bash

sudo apt-get install -y python-dev python-rpi.gpio

# install Aruino
wget https://downloads.arduino.cc/arduino-1.6.10-linuxarm.tar.xz -P ~
tar xf ~/arduino-1.6.10-linuxarm.tar.xz
rm ~/arduino-1.6.10-linuxarm.tar.xz




# Install avrdude-rpi
cp autoreset2560 ~/arduino-1.6.10/hardware/tools/avr/bin/
cp autoreset328 ~/arduino-1.6.10/hardware/tools/avr/bin/
cp avrdude-autoreset ~/arduino-1.6.10/hardware/tools/avr/bin/
sudo mv ~/arduino-1.6.10/hardware/tools/avr/bin/avrdude ~/arduino-1.6.10/hardware/tools/avr/bin/avrdude-original
sudo ln -s ~/arduino-1.6.10/hardware/tools/avr/bin/avrdude-autoreset ~/arduino-1.6.10/hardware/tools/avr/bin/avrdude


sudo chmod +x ~/arduino-1.6.10/hardware/tools/avr/bin/avrdude
sudo chmod +x ~/arduino-1.6.10/hardware/tools/avr/bin/autoreset328
sudo chmod +x ~/arduino-1.6.10/hardware/tools/avr/bin/autoreset2560
