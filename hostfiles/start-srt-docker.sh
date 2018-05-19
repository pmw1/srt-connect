#!/bin/bash
docker rm -f srt-rx
docker run --name="srt-rx" --network="split" --ip="10.0.10.4" -p 3000:3000/udp -v /home/kevin/apps/srt-connect/hostfiles:/home/hostfiles --privileged -i -t -d --entrypoint="/home/hostfiles/srt-entrypoint.sh" pmw1/srt 
