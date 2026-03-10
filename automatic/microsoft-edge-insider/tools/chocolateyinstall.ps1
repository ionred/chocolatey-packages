$ErrorActionPreference = 'Stop';

$version = '146.0.3856.49'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9b6050b1-bd3d-4936-8afc-ea964cd132e1/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9bb075d6-7bb9-4548-800f-ddd15c40c2ee/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'F08185282C9BC2AC7214AF403965EA8D828A8EC1EB453792247D9565B8CE32F3'
  checksumType  = 'sha256'
  checksum64    = 'FFFD9142C21ABF3688A68AB3AE2C9CE97000CC65ACD348CCDBD73996797E2E85'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








