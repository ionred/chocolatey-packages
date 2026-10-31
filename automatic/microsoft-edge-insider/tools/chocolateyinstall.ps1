$ErrorActionPreference = 'Stop';

$version = '157.0.4341.30'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/33c95d88-1d98-451b-8e71-0ab6bfab490f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5bc18ab4-812b-4a07-8e6e-e9343a14e85e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'B627758F1693AE7FC746BC713F4191503D50B65C39371149350BAD396C1A3681'
  checksumType  = 'sha256'
  checksum64    = 'A79D222A001562288A4B9C9F7FD8CDC8DF7BD859D811D53E66FAF99816A7BE81'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








