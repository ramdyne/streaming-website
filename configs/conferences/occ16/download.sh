#!/bin/sh

# fahrplan
wget --no-check-certificate -q "http://thrstn.de/c3voc/schedule_timefix.xml" -O /tmp/occ16-schedule.xml && mv /tmp/occ16-schedule.xml schedule.xml
rm -f /tmp/occ16-schedule.xml

# relive
wget -q "http://live.dus.c3voc.de/relive/occ16/index.json" -O /tmp/occ16-vod.json && mv /tmp/occ16-vod.json vod.json
rm -f /tmp/occ16-vod.json
