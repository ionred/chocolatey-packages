$ErrorActionPreference = 'Stop'

$packageName = 'hwmonitor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'EXE'
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.50.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = '82234f204cb3135d0aef839b25870d6ed71ebc4d75c2b2031ab727e7e570057f'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs;
