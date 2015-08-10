#!/bin/sh

printf '\033[1m%s\033[0m\n' '# Fix broken packages'
zenity --password | sudo -S dpkg --configure -a
sudo apt-get -f install
sudo apt-get update
