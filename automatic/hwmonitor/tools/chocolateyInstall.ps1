$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.46.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '024420291dddd0ad606d995e42794ee2e4907201ed72c8cd8efb6a7c7b418bf0'
  checksumType  = 'sha256'
};
Install-ChocolateyPackage @packageArgs;

