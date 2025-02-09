$ErrorActionPreference = 'Stop'

$packageName = 'hwmonitor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'EXE'
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.56.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '053ed712bf51cd7042a02be1a651bfb2d865c70a6c5f7952a3e34fedd08c5f05'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs;
