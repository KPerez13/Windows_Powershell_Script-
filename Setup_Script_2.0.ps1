#Have to Give a proper greeting first:

PowerShell -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('hello sir, welcome to the Windows Version of the Setup Script.Per your command, Just sit back and relax while I set up this new machine up for you with your essentials');"

#Upgrade Powershell to the latest and greatest using winget:
winget install --id Microsoft.Powershell --source winget 

#let powershell install itself:
Start-Sleep -Seconds 15

#second part of upgrading powershell:
winget install --id Microsoft.Powershell.Preview --source winget 

#Letting powershell finish:
Start-Sleep -Seconds 15 
# 4th change directories to my home direcotry and then make some new ones:
cd C:\Users\Kenny\
mkdir Scripts,Studying,Wallpapers,VMs

#pin the newly created directories to quick access for convenience(This part errors out for some reason)  
$o = new-object -com shell.application 
$o.Namespace('C:\Users\Kenny\Scripts\').Self.InvokeVerb("pintohome")
$o = new-object -com shell.application 
$o.Namespace('C:\Users\Kenny\Studying\').Self.InvokeVerb("pintohome")
$o = new-object -com shell.application 
$o.Namespace('C:\Users\Kenny\Wallpapers\').Self.InvokeVerb("pintohome")
$o = new-object -com shell.application 
$o.Namespace('C:\Users\Kenny\VMs\').Self.InvokeVerb("pintohome")

#installing apps via winget 
winget install google.chrome

Start-Sleep -Seconds 10
 
winget install --id XP99J3KP4XZ4vv Zoom

Start-Sleep -Seconds 10 

winget install todoist 

Start-Sleep -Seconds 10 

winget install Wireshark 

Start-Sleep -Seconds 10 

winget install neofetch 

Start-Sleep -Seconds 5

#Finally closing the script by saying a goodbye

PowerShell -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('Many Thanks for waiting, your new Windows Machine is now setup and awaiting your next commmand.');"
