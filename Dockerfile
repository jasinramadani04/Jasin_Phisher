# Dockerfile

# Author       : KasRoudra
# Github       : https://github.com/jasinramadani04
# Email        : jasinramadani04@gmail.com
# Date         : 26-12-2021
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:10
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/jasinramadani04/Jasin_Phisher"

# Working directory
WORKDIR Jasin_Phisher/
# Add files 
ADD . /Jasin_Phisher

# Installing other packages
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean

# Main command
CMD ["python3", "Jasin_Phisher.py"]

## Wanna run it own? Try following commnads:

## "cd Jasin_Phisher", "docker build . -t pyphisher:1.0", "docker run --rm -it Jasin_Phisher:1.0"
