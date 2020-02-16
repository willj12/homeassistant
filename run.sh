#!/bin/bash
#docker run -d --name="home-assistant" -v $(pwd)/config:/config --net=host --restart unless-stopped homeassistant
docker run -d --name="home-assistant" -v $(pwd)/config:/config -v $(pwd)/rako:/usr/lib/python3.6/site-packages/rako --net=host --restart unless-stopped homeassistant
