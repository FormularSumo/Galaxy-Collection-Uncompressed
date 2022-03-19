Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\game.zip" -Force

cmd /c copy /b "C:\Program Files\LOVE\love.exe" + "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\game.zip" "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe"

Start-Sleep -Milliseconds 500

& "C:\Program Files (x86)\Resource Hacker\ResourceHacker.exe" -open "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -save "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -resource "C:\Users\chewy\Documents\SWGC\Uncompressed-files-Star-Wars-Galaxy-Collection\Original Sources and Assets\Icons\Game.ico" -action addoverwrite - mask ICONGROUP,1,1

Start-Sleep -Milliseconds 500

& "C:\Program Files (x86)\Resource Hacker\ResourceHacker.exe" -open "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -save "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -resource "C:\Users\chewy\Documents\SWGC\Uncompressed-files-Star-Wars-Galaxy-Collection\Original Sources and Assets\Icons\VersionInfo.res" -action addoverwrite

Start-Sleep -Milliseconds 1000

Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Galaxy Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\Galaxy Collection.zip"  -Force

Remove-Item "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\game.zip"

Remove-Item "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\Galaxy Collection\*" -Recurse