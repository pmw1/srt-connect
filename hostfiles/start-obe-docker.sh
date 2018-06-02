#!/bin/bash
docker rm -f obe
docker run --name="obe" --network="split" --ip="10.0.10.2" -v /home/kevin/apps/srt-connect/hostfiles:/home/hostfiles --privileged -i -t -d --device /dev/blackmagic/io0 pmw1/obe 
