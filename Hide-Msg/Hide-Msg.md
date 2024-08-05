# Hide-Msg 

First paste the below code into powershell to setup a text file.

```
function Hide-Msg {

	[CmdletBinding()]
	param (
	
	[Parameter (Mandatory = $True, ValueFromPipeline = $True)]
	[string]$Path,

	[Parameter (Mandatory = $False)]
	[string]$Message 
	)

	echo "`n`n $Message" > $Env:USERPROFILE\Desktop\foo.txt

	cmd.exe /c copy /b "$Path" + "$Env:USERPROFILE\Desktop\foo.txt" "$Path"

	rm $Env:USERPROFILE\Desktop\foo.txt -r -Force -ErrorAction SilentlyContinue

}
```
After running the above script, Paste the below code into powershell with the path to your image included.

```
Hide-Msg -Path "C:\Users\user\Desktop\example.jpg" -Message "this is your secret message"
```
