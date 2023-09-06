Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}
Write-Host "merhaba..."
New-Item -Path 'C:\Users\Pc\Desktop\file.txt' -ItemType File


$dosyaYolu = 'C:\Users\Pc\Desktop\file.txt'
$metin = @"
Merhaba dünya 0x00
"@


$metin | Set-Content -Path $dosyaYolu

Start-Process notepad.exe -ArgumentList $dosyaYolu
