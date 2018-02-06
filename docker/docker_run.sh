#!/usr/bin/env bash

docker run -d \
--name="home-assistant" \
-v /home/homeassistant/.homeassistant:/config \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/letsencrypt:/etc/letsencrypt:ro \
-v /usr/bin/ssl-cert-check:/usr/bin/ssl-cert-check:ro \
--device /dev/ttyACM0:/dev/ttyACM0 \
--net=host \
--rm \
homeassistant/raspberrypi3-homeassistant
