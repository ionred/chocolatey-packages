
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6be439f9-c5a5-40c2-aacd-7ff730f491c5/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ceea53c9-2fb2-4287-8f6f-8e202fbf9a91/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '24d913927b5fc9f9c5a9ac4f61c9c259f8578c4085cbaa6c5f1b425215a58498'
  checksumType  = 'sha256'
  checksum64    = '1bcbcdf87d0d37712208125db40696f840a31d9677b9462bb7495d7b6c7ded87'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








