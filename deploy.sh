#!/bin/sh

echo "== fix local perms =="
sudo chmod +r assets/css/main.css

echo "== live.ber =="
ssh -A voc@live.ber.c3voc.de 'cd /srv/nginx/streaming-website; sudo -E git checkout events/cccamp15; sudo -E git pull; sudo rm /srv/nginx/cache/streaming_website/static/* /srv/nginx/cache/streaming_website/pages/* /srv/nginx/cache/streaming_fcgi/*'
scp assets/css/main.css voc@live.ber.c3voc.de:/srv/nginx/streaming-website/assets/css/main.css

echo "== usa.lan =="
ssh -A voc@usa.lan.c3voc.de  'cd /srv/nginx/streaming-website; sudo -E git checkout events/cccamp15; sudo -E git pull; sudo rm /srv/nginx/cache/streaming_website/static/* /srv/nginx/cache/streaming_website/pages/* /srv/nginx/cache/streaming_fcgi/*'
scp assets/css/main.css voc@usa.lan.c3voc.de:/srv/nginx/streaming-website/assets/css/main.css
