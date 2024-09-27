#! /bin/bash

love.js -m 150000000 -t "Galaxy Collection" "/home/james/Documents/SWGC/gameWeb.love" "/home/james/Documents/SWGC/Web output" -c

cd "/home/james/Documents/SWGC/Web output"

rm -r "/home/james/Documents/SWGC/Galaxy-Collection-Web-Testing/game.data"

cp "/home/james/Documents/SWGC/Web output/game.data" "/home/james/Documents/SWGC/Web output/game.js" "/home/james/Documents/SWGC/Galaxy-Collection-Web-Testing/"

cd /home/james/Documents/SWGC/Galaxy-Collection-Web-Testing

konsole -e python3 -m http.server
