$ErrorActionPreference = 'Stop';

$version = '154.0.4258.24'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9408ad8b-bcb0-4a9f-bcd2-59092a857fd6/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4285d126-2ee4-4cdf-9e42-84160b3ce9c8/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6D0C9F34C41F5571D0E5887E052B23D69B5551CC41CA42C604494C5F548AF123'
  checksumType  = 'sha256'
  checksum64    = '06FA1DBFABFA06DE1CEADC6905726F75684C2434F3E74AAE3118B74FBD0DF6EF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








