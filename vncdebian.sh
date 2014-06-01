#!/bin/sh

#update
apt-get -y update
apt-get -y upgrade

#install vnc
apt-get -y install gnome-desktop-environment
apt-get -y install xfonts-100dpi
apt-get -y install xfonts-100dpi-transcoded
apt-get -y install xfonts-75dpi
apt-get -y install xfonts-75dpi-transcoded
apt-get -y install xfonts-base
apt-get -y install tightvncserver
tightvncserver :1
tightvncserver -kill :1
wget -O ~/.vnc/xstartup "https://raw.githubusercontent.com/metaland/vncdebian/master/xstartup"
tightvncserver -geometry 1024x768 :1
apt-get -y install wine
apt-get -y install unrar
apt-get -y install rar
wget https://raw.githubusercontent.com/metaland/vncdebian/master/WinRAR.rar
unrar x WinRAR.rar
apt-get install flashplugin-nonfree

# info
clear
echo "==============================================="  | tee -a log-install.txt
echo "Don't Change This" | tee log-install.txt
echo "Hargai Saya Sebagai Pembuat Auto Script ini" | tee log-install.txt
echo "Author kenyangssh.com | Edited By Metaland tee log-install.txt
echo "==============================================="  | tee -a log-install.txt
