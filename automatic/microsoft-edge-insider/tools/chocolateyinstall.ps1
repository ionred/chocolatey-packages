
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/89fe372b-ab65-4942-86ee-fc464f7b5be5/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/9de8587f-0251-45d2-984a-6d5dbede7df8/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '2b4d59ab3dc4dc9d5c196273ec4a2fc15a5a34ee3b2b945fcab6cde6a7b468fb'
  checksumType  = 'sha256'
  checksum64    = 'db9aa3cd4326e3f8490d61f75bce1dff5c3cc1b6c7b717742c1606d603e1d077'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








