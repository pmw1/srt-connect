#!/bin/bash
docker rm -f vlc-rx
docker run --name="vlc-rx" --network="split" --ip="10.0.10.5" -p 4444:4444/udp -v /home/kevin/apps/srt-connect/hostfiles:/home/hostfiles --privileged -i -t -d --entrypoint="/home/hostfiles/vlc-entrypoint.sh" pmw1/vlc 
sudo docker attach vlc-rx
