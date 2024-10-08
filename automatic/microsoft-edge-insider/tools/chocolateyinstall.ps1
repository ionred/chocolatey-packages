$ErrorActionPreference = 'Stop';

$version = '130.0.2849.27'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ddaa17f0-fa77-4e71-af2b-bd3381f4d2bf/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5024fdea-18de-41bc-ac1e-5986f11030a3/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'B08CC7F6C8E22F2ED55B9742445610042226144744949DA0C47C1CFAF311FE07'
  checksumType  = 'sha256'
  checksum64    = '09DDFC6A11EBDE482AB18D41CFB9B774B49F1A10CACD9B7C441EF76FFA245107'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








