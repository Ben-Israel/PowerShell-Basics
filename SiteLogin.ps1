$url = "www.yoursite.com"
$username = "yourusername"
$password = "yourpassword"

$IE =  New-Object -ComObject internetexplorer.application;
$IE.visible = $true;
$IE.navigate($url);

while ($IE.Busy -eq $true)
{
Start-Sleep -Milliseconds 2000;
}

$IE.Document.getElementbyId("input name").value = $username
$IE.Document.getElementbyId("input name").value = $password
$IE.Document.getElementbyId("input name").Click()

while ($IE.Busy -eq $true)
{
Start-Sleep -Milliseconds 2000;
}

$wshell = New-Object -ComObject Wscript.Shell;
$wshell.Popup("Your are Logged-in Now!",0,"Login Successful",0x0);
