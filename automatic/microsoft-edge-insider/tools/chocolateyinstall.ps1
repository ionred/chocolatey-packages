$ErrorActionPreference = 'Stop';

$version = '126.0.2592.56'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/385f4029-d8ef-4787-8730-ba360e710c87/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d9fed14e-eb20-4d8d-ab85-d967eb3c7d17/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7A6D2567EEAB05B9F19CF80ED8F89D127D5DB9DE20A54463877D6D80F15EAAC8'
  checksumType  = 'sha256'
  checksum64    = '9DA914E02BF88954AF6092DB652CE610C60678F827A42664B73526E27FB7649D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








