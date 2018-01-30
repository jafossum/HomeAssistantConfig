docker run -d \
--name="home-assistant" \
-v $(pwd)/..:/config \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/letsencrypt:/etc/letsencrypt:ro \
-v /usr/bin/ssl-cert-check:/usr/bin/ssl-cert-check:ro \
--device /dev/ttyACM0:/dev/ttyACM0 \
--net=host \
homeassistant/raspberrypi3-homeassistant

#docker run -d \
#--name="home-assistant" \
#-v $(pwd)/..:/config \
#-v /etc/localtime:/etc/localtime:ro \
#--device /dev/ttyACM0:/dev/ttyACM0 \
#--net=host \
#jafossum/home-assistant:latest