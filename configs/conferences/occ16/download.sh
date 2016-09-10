#!/bin/sh

# fahrplan
wget --no-check-certificate -q "https://conference.owncloud.org/conference/oCC2016/schedule.xml" -O /tmp/occ16-schedule.xml && mv /tmp/occ16-schedule.xml schedule.xml
rm -f /tmp/occ16-schedule.xml

# relive
#wget -q "http://live.dus.c3voc.de/relive/froscon16/index.json" -O /tmp/froscon2016-vod.json && mv /tmp/froscon2016-vod.json vod.json
#rm -f /tmp/froscon2016-vod.json
