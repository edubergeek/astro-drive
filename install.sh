#!/bin/bash
# astro-drive
# Astronomy swiss army knife bootable thumb drive
# Curt Dodds, Institute for Astronomy, dodds@hawaii.edu
# 2020-08-19

# update Ubuntu
sudo apt-get update 
#sudo apt-get -y upgrade

# install python3
#sudo apt -y install python3 python3-pip

# libatlas3
sudo apt -y install libatlas3-base

#install SourceExtractor
sudo apt -y install sextractor scamp swarp

# install SAOImage aka ds9
sudo apt -y install saods9

# install xmlrpc
#apt install xmlrpc default-jre
sudo apt -y install xmlrpc


# install miniconda - run as regular user
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./miniconda.sh
bash ./miniconda.sh -b -p ~/miniconda 
rm ./miniconda.sh

## conda channels
### astroconda channel
#conda config --add channels http://ssb.stsci.edu/astroconda
#conda update astropy
#conda activate astroconda
#
##install common Python libs
#pip install numpy
#pip install matplotlib
#pip install pytest
#exit
#
#
### astropy channel
#conda config --add channels astropy
## conda channels
#
## conda environments
### astropy env
#conda create -n astropy  astropy
#conda activate astropy
#pip install numpy
#pip install matplotlib
#exit
## conda environments
#
## jupyter notebook
#conda install -c conda-forge jupyterlab notebook
##conda activate astropy
##conda install -c conda-forge notebook
##jupyter notebook
#
## AstroScrappy
#conda install -c astropy astroscrappy 
##jupyter notebook
#
##conda activate astropy
##jupyter notebook
#
## install Aperture Photometry Tool aka APT
#wget http://web.ipac.caltech.edu/staff/laher/apt/APT_v2.8.4.tar.gz
#tar xzvf APT_v2.8.4.tar.gz
##mkdir .AperturePhotometryTool
##ls .AperturePhotometryTool/
#
## add firefox bookmarks
#echo Jupyter https://jupyter.org/install
#echo Sextractor Tutorial https://ethz.ch/content/dam/ethz/special-interest/phys/particle-physics/quanz-group-dam/documents-old-s-and-p/Courses/vp-asl-astro/tortorelli_data_reduction_steps.pdf
#echo astropy https://docs.astropy.org/en/stable/index.html
#echo conda cheats https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf
#echo scamp https://scamp.readthedocs.io/en/latest/Using.html
#echo swarp https://www.astromatic.net/software/swarp
#echo SIMBAD https://simbad.u-strasbg.fr/simbad/sim-fid
#echo Astro-SCRAPPY https://astroscrappy.readthedocs.io/en/latest/#
#echo ds9 http://ds9.si.edu/doc/user/
#echo APT http://www.aperturephotometry.org/
#
