
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/f3f0b91e-7427-43c5-81ed-268eb437c41e/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ee1d4779-906b-4cba-b099-cf61bf4b1aae/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'a4e32f730583fd12978700a73bc2027f5f462951d4a8f68b1e1281524c8dfdb4'
  checksumType  = 'sha256'
  checksum64    = '5d020e5babe4faaeea8ace63c459eb72c1c62e026011a8591e171b81da1813c1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








