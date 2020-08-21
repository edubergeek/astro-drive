#!/bin/bash
# astro-drive
# Astronomy swiss army knife bootable thumb drive
# Curt Dodds, Institute for Astronomy, dodds@hawaii.edu
# 2020-08-19

# update Ubuntu
sudo apt-get update 
#sudo apt-get -y upgrade
sudo add-apt-repository universe


# install python3
sudo apt-get -y install python3 python3-pip

# libatlas3
sudo apt-get -y install libatlas3-base

#install SourceExtractor
sudo apt-get -y install sextractor scamp swarp

#install Stellarium
sudo apt-get -y install stellarium

# install SAOImage aka ds9
sudo apt-get -y install saods9

# install xmlrpc
#apt install xmlrpc default-jre


