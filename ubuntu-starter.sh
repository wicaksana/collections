#!/bin/bash

# download apple fonts and upgrade packages
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fontconfig-infinality

# install arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get install arc-theme

# install monaco font for mono font
sudo curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash

# install unity-tweak-tool to easily change theme
sudo apt-get install unity-tweak-tool

# development tools
sudo apt-get install maven git vim virtualbox

# install python's stuff
sudo apt-get install python3-pip libpython3.5-dev python3.5-venv libzmq3-dev libblas-dev liblapack-dev libatlas-base-dev gfortran libfreetype6-dev
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 10
pip3 install numpy pandas scikit-learn matplotlib statsmodels beautifulsoup4 networkx nltks jupyter


# install Calibre
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

