Remove-Item "C:\Users\chewy\Documents\SWGC\Website\*" -Recurse

Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\Website\game.zip" -Force

Rename-Item -Path "C:\Users\chewy\Documents\SWGC\Website\game.zip" -NewName "C:\Users\chewy\Documents\SWGC\Website\game.love"

npx love.js.cmd -m 150000000 -t "Galaxy Collection" "C:\Users\chewy\Documents\SWGC\Website\game.love" "C:\Users\chewy\Documents\SWGC\Website unmodified" -c

Remove-Item "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection-Web\game.data" -Recurse

cmd /c copy "C:\Users\chewy\Documents\SWGC\Website unmodified\game.data" "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection-Web\game.data"
cmd /c copy "C:\Users\chewy\Documents\SWGC\Website unmodified\game.js" "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection-Web\game.js"

cd C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection-Web

python -m http.server 8000