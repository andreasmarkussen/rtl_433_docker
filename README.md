# rtl_433 on Debian in Docker (for Windows)

This Docker setup enables you and me to compile, run and test rtl_433 images inside a Docker Container, so it does not matter if you are on your Windows or Mac. 

Why:
--------------
I have [rtl_433](https://github.com/merbanan/rtl_433) running on my RaspBerry Pi, and when I want to test my devices, with the [rtl_433_test](https://github.com/merbanan/rtl_433_test) repo, my Raspberry PI is just to slow. 

Therefor I have a Docker setup, that I can use on my Windows 10 Laptop.

Installation instructions:
--------------------------

I assume that you have followed the instructions in 

* [rtl_433](https://github.com/merbanan/rtl_433)
* [rtl_433_test](https://github.com/merbanan/rtl_433_test)

Clone this repository next to the others. E.g. in C:\Tech\AM\

Build the Docker image

    > docker-build.cmd

Run the Docker Image

    > docker-run.cmd

Then use it as it was the Raspberry PI or any other linux

1) compile rtl_433
2) compile rtl_433_tests

Installation using cmake:

    cd rtl_433/
    mkdir build
    cd build
    cmake ../
    make
    make install


The final 'make install' step should be run as a user with appropriate permissions


Troubleshooting
---------------

Report an issue