#!/bin/bash
#
# Installation Scripts for Seyola * Bots
#
# Property of Seyola
# Maintainer: Hassan El Karhani
#

apt-get update  # updates the package index cache
apt-get upgrade -y  # upgrade packages

# installs system tools
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y bash  # upgrades bash if necessary
apt-get clean  # cleans up the package index cache

# INSTALL MINICONDA
# downloads Miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
bash Miniconda.sh -b  # installs it
rm -rf Miniconda.sh  # removes the installer
export PATH="/root/miniconda3/bin:$PATH"  # prepends the new path

# install pdf tools needed
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb
apt install -y ./wkhtmltox_0.12.6-1.focal_amd64.deb

# install conda python libs
conda update -y conda python # updates conda & Python (if required)
conda install -y ipython  # installs IPython shell
conda install -c anaconda statsmodels # statistical modeling library
conda install -y -c conda-forge mplfinance # installs mpl finance
conda install -y -c conda-forge matplotlib # matplotlib
conda update -y --all

# install needed python libs via pip
pip install pybit==1.3.6 # install bybit API pybit (older version 1.3.6)
pip install discord-webhook # install discord web-hook
pip install PyPDF2 # pypPDF2 lib
pip install pdfkit # pdfkit lib

# prepare the folders in the image
mkdir /seyola_code