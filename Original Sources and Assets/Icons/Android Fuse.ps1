Remove-Item "C:\Users\chewy\Documents\SWGC\love-android\app\src\main\assets\*" -Recurse

Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Star-Wars-Galaxy-Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\love-android\app\src\main\assets\game.zip" -Force

Rename-Item -Path "C:\Users\chewy\Documents\SWGC\love-android\app\src\main\assets\game.zip" -NewName "C:\Users\chewy\Documents\SWGC\love-android\app\src\main\assets\game.love"