npx love.js.cmd -m 150000000 -t "Galaxy Collection" "C:\Users\chewy\Documents\SWGC\gameWeb.love" "C:\Users\chewy\Documents\SWGC\Website unmodified" -c

cd "C:\Users\chewy\Documents\SWGC\Website unmodified"

Remove-Item "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Web\game.data" -Recurse
Remove-Item "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Web\game.js" -Recurse

cmd /c copy "C:\Users\chewy\Documents\SWGC\Website unmodified\game.data" "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Web\game.data"
cmd /c copy "C:\Users\chewy\Documents\SWGC\Website unmodified\game.js" "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Web\game.js"

cd C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Web

python -m http.server 8000