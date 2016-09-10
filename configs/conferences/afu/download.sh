#!/bin/sh

# relive
wget --no-check-certificate -q "http://live.ber.c3voc.de/releases/relive/afu/index.json" -O /tmp/afu-relive.json && mv /tmp/afu-relive.json relive.json
