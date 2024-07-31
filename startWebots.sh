#! /bin/bash

##___BEFORE___ To run Webots with a graphical user interface in a docker container, you need to enable connections to the X server before starting the docker container via `xhost +local:root > /dev/null 2>&1`

LOCAL_DIR=/tmp/webotsVolume

#docker run --rm --device /dev/dri -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
#-v $LOCAL_DIR:/root  --name webots \
#cyberbotics/webots:latest

# version Webots R2023b


docker run --rm --device /dev/dri -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
-v $LOCAL_DIR:/root  --name webots \
quay.io/andyyuen/my_webots:latest


## after running this script type `webots` on the terminal inside the container.
