
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a56d9bd9-924a-4257-95a3-dbe8b66efeba/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b4fcbaaf-8f71-4243-8994-51a47f5ef70e/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '8b27db13bac15cb5fc3887423bdc306cad27d265e3c5ebb3f0d7676a08e46604'
  checksumType  = 'sha256'
  checksum64    = 'e4fa5630e655d114088b44a6b7d5c3c3569d07eeba6783e42bbecbd49fc88695'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








