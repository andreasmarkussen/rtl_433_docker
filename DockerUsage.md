# Docker Usage

The purpose is to get a "Run anywhere" image, based on python 3.6.

See the [Python Docker Page](https://hub.docker.com/_/python/)

## Todo:
1) Findout of python:slim or python:alpine works, for smaller Repos
2) 

## Building and Run the image

    $ docker build -t python-rtl_433-tests .
    # Consider using --tags and --label??

    $ docker run -it --rm --name my-running-rtl_433-app python-rtl_433-tests

## Running a single file

## Run interactive

    $ docker run -it python-rtl_433-tests bash

## Mounting the right folders:

    $ docker run -v /host:/


        --mount mount                    Attach a filesystem mount to the container
    -v, --volume list                    Bind mount a volume
        --volume-driver string           Optional volume driver for the
                                        container
        --volumes-from list              Mount volumes from the specified
                                        container(s)
    -w, --workdir string                 Working directory inside the container

    docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:2 python your-daemon-or-script.py
