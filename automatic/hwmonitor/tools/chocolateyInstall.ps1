$ErrorActionPreference = 'Stop'

$packageName = 'hwmonitor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'EXE'
$url = 'https://download.cpuid.com/hwmonitor/hwmonitor_1.51.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/SILENT /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = '*hwmonitor*'
  checksum      = 'c7368e57577fc53bb2ffa717e50a054065494d2577a1da5b662448463a3ed83f'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs;
