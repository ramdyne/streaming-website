#!/bin/sh

# fahrplan
wget -q "http://programm.froscon.de/2015/schedule.xml" -O /tmp/schedule.xml && mv /tmp/schedule.xml schedule.xml

# vod json
wget -q "http://cdn.c3voc.de/releases/relive/index.json" -O /tmp/vod.json && mv /tmp/vod.json vod.json
