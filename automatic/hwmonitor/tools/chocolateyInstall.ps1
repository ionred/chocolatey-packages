$ErrorActionPreference = 'Stop'

$packageName = 'hwmonitor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'EXE'
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.52.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '11192b73bc70393f4ac655a49441fa352f52d011cdb3f86c77b73cf1eb7ac7e0'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs;
