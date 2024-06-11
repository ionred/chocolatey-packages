$ErrorActionPreference = 'Stop';

$version = '126.0.2592.49'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d3ff997b-bc7d-4829-baa6-8879e5d04184/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/086f7bf9-1c06-4581-b497-ba93d150d6af/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'FDAFC171205BAC154C0E0C857A0CDB44518F1923DAD6E6010F1FAD8D1C6B1B2C'
  checksumType  = 'sha256'
  checksum64    = '47A3DD49126F72AF06A2D2F7037E027E4F191BE45F2E9F422383A6F08D8215A3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








