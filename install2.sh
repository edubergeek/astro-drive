#!/bin/bash
# astro-drive
# Astronomy swiss army knife bootable thumb drive
# Curt Dodds, Institute for Astronomy, dodds@hawaii.edu
# 2020-08-19


# install miniconda - run as regular user
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./miniconda.sh
bash ./miniconda.sh -b -p ~/miniconda 
rm ./miniconda.sh
source ~/miniconda/bin/activate 
conda init

# conda channels
## astroconda channel
conda config --add channels http://ssb.stsci.edu/astroconda

## astropy channel
conda config --add channels astropy

## jupyter notebook
conda install -c conda-forge jupyterlab notebook

# conda environments
## astroconda env
conda create -n astroconda astroconda
conda activate astroconda
pip install numpy matplotlib pytest
conda deactivate

## astropy env
conda create -n astropy astropy
conda activate astropy
pip install numpy matplotlib pytest
conda deactivate

## AstroScrappy
conda activate astropy
conda install -c astropy astroscrappy 
conda deactivate
#

## install Aperture Photometry Tool aka APT
wget http://web.ipac.caltech.edu/staff/laher/apt/APT_v2.8.4.tar.gz
tar xzvf APT_v2.8.4.tar.gz
rm -f APT_v2.8.4.tar.gz
cat >$HOME/APT.sh <<EOF
#!/bin/bash

APT_HOME=${APT_HOME:-$HOME/astro-drive/APT_v2.8.4}

echo "APT_ARCH=$APT_ARCH";
echo "APT_HOME=$APT_HOME";


case $APT_ARCH  in
"MAC")
        java -Duser.language=en -Duser.region=US -Xmx2048M -Xdock:name="IGNORE" -Xdock:icon=$APT_HOME/Aperture\ Photometry\ Tool.app/Contents/Resources/APT.icns -jar $APT_HOME/APT.jar $*
	;;
    *)
        java -Duser.language=en -Duser.region=US -Xmx2048M -jar $APT_HOME/APT.jar
	;;
esac
EOF
chmod +rx $HOME/APT.sh

cat <<EOF
Aperture Photometry Tool: $HOME/APT.sh
AstroPy+AstroSCRAPPY:     conda activate astropy
AstroConda:               conda activate astroconda
SourceExtractor           sextractor (also scamp and swarp)
ds9                       ds9
EOF

#
## list some useful web urls
cat <<EOF
Jupyter             https://jupyter.org/install
Sextractor Tutorial https://ethz.ch/content/dam/ethz/special-interest/phys/particle-physics/quanz-group-dam/documents-old-s-and-p/Courses/vp-asl-astro/tortorelli_data_reduction_steps.pdf
astropy             https://docs.astropy.org/en/stable/index.html
conda cheats        https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf
sextractor          https://sextractor.readthedocs.io/en/latest/
scamp               https://scamp.readthedocs.io/en/latest/Using.html
swarp               https://www.astromatic.net/software/swarp
SIMBAD              https://simbad.u-strasbg.fr/simbad/sim-fid
Astro-SCRAPPY       https://astroscrappy.readthedocs.io/en/latest/#
ds9                 http://ds9.si.edu/doc/user/
APT                 http://www.aperturephotometry.org/
EOF
