
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/42f9e0ea-ced5-48f7-bca6-beb073b8f25b/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/eefb4bf2-a0f7-4d2a-9bbb-c7c5c548c925/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ba857a7d84180b4651151bcfa61abdf740dbba69260722b138b93a90e5bc5cfc'
  checksumType  = 'sha256'
  checksum64    = 'f97ada9173644137d1dc2b7d1620ccd1f2c61ee3a9710c4c6206907ddbd129da'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








