Function Wait-FileUnlock{
    while(1){
        try{
           $fs="C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe".Open('open','read', 'Read')
           $fs.Close()
           return
           }
        catch{
           Start-Sleep -Milliseconds 50
           Write-Verbose('not')
        }
	}
}

$VerbosePreference = "Continue"

cmd /c copy /b "C:\Program Files\LOVE\love.exe" + "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\game.zip" "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe"

Wait-FileUnlock

& "C:\Program Files (x86)\Resource Hacker\ResourceHacker.exe" -open "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -save "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -resource "C:\Users\chewy\Documents\SWGC\Uncompressed-files-Star-Wars-Galaxy-Collection\Original Sources and Assets\Icons\Game.ico" -action addoverwrite - mask ICONGROUP,1,1

Wait-FileUnlock

& "C:\Program Files (x86)\Resource Hacker\ResourceHacker.exe" -open "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -save "C:\Users\chewy\Documents\SWGC\Galaxy Collection\Galaxy Collection.exe" -resource "C:\Users\chewy\Documents\SWGC\Uncompressed-files-Star-Wars-Galaxy-Collection\Original Sources and Assets\Icons\VersionInfo.res" -action addoverwrite

Wait-FileUnlock

Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Galaxy Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\Galaxy Collection.zip"  -Force

sleep 60