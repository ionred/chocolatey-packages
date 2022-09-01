
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6df83fd0-368a-46cd-a61d-2ae8c2171265/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cfeca5d2-d603-4e1c-bd52-d265009c88b4/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '3ce451eddda9b3812d7dfb88ab904992b2b0ba1d06acb3533f3ce405f8055691'
  checksumType  = 'sha256'
  checksum64    = 'd12745e65b49cb31298a8368d5e759fd9dcdb9bcb64aa93925c0900f1082c5fa'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








