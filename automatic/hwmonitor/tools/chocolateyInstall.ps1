$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.41.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'hwmonitor*'
  checksum      = '2203e10b9277c0d74c3c12dc6808ea82f581fe01bd78a51b064d413eea9fd149'
  checksumType  = 'sha256'
};
if (Test-Path "C:\users\Public\Desktop\CPUID HWMonitor.lnk") {$KeepIcon = $True}
Install-ChocolateyPackage @packageArgs;
if (!$KeepIcon) {Remove-Item 'C:\Users\Public\Desktop\CPUID HWMonitor.lnk'};
