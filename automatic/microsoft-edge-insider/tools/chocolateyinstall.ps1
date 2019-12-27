
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7dc840b4-f1eb-46af-a2a0-7171db64e788/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/beb6becc-5dc3-4bd4-a457-6858a5867097/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f914c562d711cc874a1d41fd6cbaff2e9c934e2a01f30eeef24496ed27e6e28c'
  checksumType  = 'sha256'
  checksum64    = 'a52e77e0126dbd8cd9c00cc71e9bd0d7cdc98f9d1e4c388480fa596d871294b3'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








