$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.44.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = 'fc672a41e4f1925d1f66ce262321b7f80267996786a58c2bc749b8d69582c8e9'
  checksumType  = 'sha256'
};
Install-ChocolateyPackage @packageArgs;

