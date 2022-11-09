$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.47.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '78d3d4cd218b5c9cf3bdba1021a6b4e93ec1d6a5afbe260bb8900221b5e3c4a6'
  checksumType  = 'sha256'
};
Install-ChocolateyPackage @packageArgs;

