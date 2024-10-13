#! /bin/bash

cd /home/james/Documents/SWGC/Galaxy-Collection; zip -9 -r -FSr /home/james/Documents/SWGC/gameWeb.love *

love.js -m 150000000 -t "Galaxy Collection" "/home/james/Documents/SWGC/gameWeb.love" "/home/james/Documents/SWGC/Web output" -c

cd "/home/james/Documents/SWGC/Web output"

rm -r "/home/james/Documents/SWGC/Galaxy-Collection-Web/game.data"

cp "/home/james/Documents/SWGC/Web output/game.data" "/home/james/Documents/SWGC/Galaxy-Collection-Web/src"

cd /home/james/Documents/SWGC/Galaxy-Collection-Web/src

konsole -e python3 -m http.server