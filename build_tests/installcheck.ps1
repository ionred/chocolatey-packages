param
 (
     $PackageName
 )

write-host $packageName 

choco install ".\automatic\$packageName\$packageName.nuspec" -y


Start-Sleep -Seconds 1
$packages = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) -ErrorAction:SilentlyContinue;

$installed = ($packages | Select-Object $_.DisplayName) -match "$packageName*"
write-host $installed.count
if ($installed.count -lt 1) {exit 12} 
write-host "uninstalling..."
choco uninstall $packageName
$packages = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*', 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) -ErrorAction:SilentlyContinue;
$uninstalled = ($packages | Where-Object { $_.DisplayName -like "$packageName*" }  | Measure-Object | Select-Object -ExpandProperty count)

if ($uninstalled -gt 0) {exit 13} else {exit 0}
