$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.42.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '9e144cb22bab8b94b26753b60382fbf7acb86f03f2ba0cf092aabd8e73918da7'
  checksumType  = 'sha256'
};
Install-ChocolateyPackage @packageArgs;

