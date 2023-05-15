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
  checksum      = '1705d7f37871f655cf58d4cabd85876400990e9bb4095bf6d9b4bf1bcee7d20f'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs;
