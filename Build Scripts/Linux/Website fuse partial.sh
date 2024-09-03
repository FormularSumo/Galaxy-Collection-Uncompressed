#! /bin/bash

love.js -m 150000000 -t "Galaxy Collection" "/home/james/Documents/SWGC/gameWeb.love" "/home/james/Documents/SWGC/Website unmodified" -c

cd "/home/james/Documents/SWGC/Website unmodified"

rm -r "/home/james/Documents/SWGC/Star-Wars-Galaxy-Collection-Web/game.data" "/home/james/Documents/SWGC/Star-Wars-Galaxy-Collection-Web/game.js"

cp "/home/james/Documents/SWGC/Website unmodified/game.data" "/home/james/Documents/SWGC/Website unmodified/game.js" "/home/james/Documents/SWGC/Star-Wars-Galaxy-Collection-Web/"

cd /home/james/Documents/SWGC/Star-Wars-Galaxy-Collection-Web

konsole -e python3 -m http.server