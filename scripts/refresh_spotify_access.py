#!/usr/local/bin/python3
import sys
sys.path.append("/Users/janek/Developer/pi-spotify/spotify-alarm-clock")
from server import devices

# Lazy option: run any endpoint and `spotify-alarm-clock/server.py` will refresh the token
devices()
