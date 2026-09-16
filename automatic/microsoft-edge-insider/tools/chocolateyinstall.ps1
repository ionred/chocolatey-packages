$ErrorActionPreference = 'Stop';

$version = '154.0.4258.18'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8fbd5a03-b234-492d-93a6-0f1ed20e98cf/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/33790b72-08df-4bc9-9ee9-dd22638f3d03/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6377B898754B0B85EA90E8019B4BBA69004709B05EEDCC90D090865441DC9374'
  checksumType  = 'sha256'
  checksum64    = '64C69D280322AC9F1CEA150AF76BBD098A9DD0EA681CD8C315166C5CB00BB2BD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








