#!/bin/bash
sudo rg351p-js2xbox --silent -t oga_joypad &
sudo ln -s /dev/input/event3 /dev/input/by-path/platform-odroidgo2-joypad-event-joystick
sudo chmod 777 /dev/input/by-path/platform-odroidgo2-joypad-event-joystick
ip_addr=`sudo osk "Enter IP/Host:" | tail -n 1`
password=`sudo osk "Enter a game password:" | tail -n 1`
sudo kill $(pidof rg351p-js2xbox)
sudo rm /dev/input/by-path/platform-odroidgo2-joypad-event-joystick
export SDL_GAMECONTROLLERCONFIG="$(cat /roms/ports/devilution/gamecontrollerdb.txt)"
/home/ark/.config/devilution/devilutionx --host $ip_addr --password $password
unset SDL_GAMECONTROLLERCONFIG
