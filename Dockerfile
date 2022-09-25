#
# Building a Docker Image with
# the Latest Ubuntu Version
#
# Property of Seyola
# Maintainer: Hassan El Karhani
#

# based on latest Ubuntu
FROM ubuntu:latest

# maintainer info
MAINTAINER hkarhani

# adding bash script
ADD install.sh /

# allow execution of the script
RUN chmod u+x /install.sh

# run script
RUN /install.sh

# add the new path
ENV PATH /root/miniconda3/bin:$PATH

# enter bash when container runs
CMD ["bash"]