# astro-drive
Astronomy swiss army knife bootable thumb drive
#!/bin/bash

# update Ubuntu
apt-get update && apt-get -y upgrade

# install python3
apt-get install python3 python3-pip

# install miniconda
cd ~/Downloads
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./miniconda.sh
bash ./miniconda.sh -b -p ~/miniconda 
rm ./miniconda.sh

# conda channels
# astroconda channel
conda config --add channels http://ssb.stsci.edu/astroconda
conda update astropy
activate astroconda
#conda info --envs

#install common Python libs
pip install numpy
pip install matplotlib
pip install pytest

#conda config --help
#conda config --show

# astropy channel
conda config --add channels astropy
python -v
#ipython

# conda environments
# astropy env
conda create -n astropy  astropy
conda activate astropy
pip install numpy
pip install matplotlib
#conda info -e
exit
#conda info -e
conda list

#install SourceExtractor
apt-get install sextractor

# install ?
sudo apt install *.deb
sudo apt install `pwd`/*.deb
rm *.deb

# libatlas3
sudo apt install libatlas3-base

# jupyter notebook
conda install -c conda-forge jupyterlab
conda activate astropy
conda install -c conda-forge notebook
jupyter notebook
conda install -c astropy astroscrappy 
jupyter notebook
reboot
conda activate astropy
jupyter notebook

# DNS resolution
cat /etc/resolv.conf

# Network time
ps -ef|grep ntp
cat /etc/timezone
timedatectl
ls /etc/ntp
ls /etc/ntp.conf
ls /etc/*ntp*
systemctl status timesyncd
systemctl status ntp.service
systemctl status systemd-timesyncd.service
ls /etc/*timesync*
timedatectl
sudo timedatectl set-ntp no
timedatectl
sudo apt install ntp
ntpq -p
sudo vi /etc/ntp.conf
ping mkosummit-10g.ps.uhnet.net
ping hilogps1.ifa.hawaii.edu
ntpq -p

# install SAOImage aka ds9
sudo apt install ds9
which ds9
ds9

# install xmlrpc
apt install xmlrpc default-jre
sudo apt install xmlrpc
sudo su
exit

# install Aperture Photometry Tool aka APT
mkdir .AperturePhotometryTool
ls .AperturePhotometryTool/

# add firefox bookmarks
echo Jupyter https://jupyter.org/install
echo Sextractor Tutorial https://ethz.ch/content/dam/ethz/special-interest/phys/particle-physics/quanz-group-dam/documents-old-s-and-p/Courses/vp-asl-astro/tortorelli_data_reduction_steps.pdf
echo astropy https://docs.astropy.org/en/stable/index.html
echo conda cheats https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf
echo scamp https://scamp.readthedocs.io/en/latest/Using.html
echo swarp https://www.astromatic.net/software/swarp
echo SIMBAD https://simbad.u-strasbg.fr/simbad/sim-fid
echo Astro-SCRAPPY https://astroscrappy.readthedocs.io/en/latest/#
echo ds9 http://ds9.si.edu/doc/user/
echo APT http://www.aperturephotometry.org/

