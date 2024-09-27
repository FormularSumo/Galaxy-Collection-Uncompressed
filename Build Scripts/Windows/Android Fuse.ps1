Remove-Item "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Android\app\src\embed\assets\*" -Recurse

Compress-Archive -Path "C:\Users\chewy\Documents\SWGC\Galaxy-Collection\*" -DestinationPath "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Android\app\src\embed\assets\game.zip" -Force

Rename-Item -Path "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Android\app\src\embed\assets\game.zip" -NewName "C:\Users\chewy\Documents\SWGC\Galaxy-Collection-Android\app\src\embed\assets\game.love"