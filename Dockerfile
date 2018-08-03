FROM debian:stable
#Consider stable-slim - ## https://hub.docker.com/_/debian/

WORKDIR /Projects

RUN apt-get update  
RUN apt-get -y install libtool libusb-dev librtlsdr-dev rtl-sdr build-essential cmake pkg-config
#RUN apt-get -y install libtool libusb-1.0.0-dev librtlsdr-dev rtl-sdr build-essential autoconf cmake pkg-config
RUN apt-get -y install python-pip git

RUN pip install DeepDiff 

#RUN mkdir /Projects

RUN ls -la
RUN ln -s /Projects ~/Projects
RUN cd ~ 
COPY . . 
## First make and install the rtl_433
## Then make and install and run the rtl_443_test

### Section 1 - rtl_433 make and install
# Could be done via Git?
# RUN cd ~/Projects/rtl_433
# mkdir build
# cd build
# cmake ../
# make
# make install

### Section 2 - rtl_433_tests make and install
# RUN cd ~/Projects/rtl_433_tests
# RUN make test
