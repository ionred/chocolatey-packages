
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/42352ac2-575c-47d1-82e9-831ecbd355d6/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/940ab2fd-120c-4abe-b5cf-81f832e54b85/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'cafe17e3f5f3ea322cd9a8dbfea0459c7017785944f848551f61cbbbaaca5fa4'
  checksumType  = 'sha256'
  checksum64    = 'e6f49c4808d0d7583422914bf0b43e55f7c92087e07e3c71345b9360131a5d21'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








