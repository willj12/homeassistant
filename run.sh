#!/bin/bash
docker run -d --name="home-assistant" -v $(pwd)/config:/config -p 8123:8123 homeassistant
