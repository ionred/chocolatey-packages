$ErrorActionPreference = 'Stop';

$version = '129.0.2792.52'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/86cafc09-4f2c-4e26-ae46-8f302fa5b067/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b569258d-dcaf-4e84-8d85-5bef7aec65e0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '04C42C4717650D76213977E1A094250E02473A8609C516CDC403785D10DF006B'
  checksumType  = 'sha256'
  checksum64    = 'A975FFD0AF6B855BBA44F14E860D03880E22CD71F3859B197982176C6DD6652E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








