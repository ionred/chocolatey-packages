
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a380347d-51ff-4840-b67e-8ce4d1a5c473/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cc3fcd73-5d0d-446f-bef9-311b99b82f3a/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '52736024e3c2050ac588bcf8d2a2121674e8a60c2bf5c71e6005111d8b7d8ecd'
  checksumType  = 'sha256'
  checksum64    = '1e78766fd3a4b0374d3bf3fe346189557f58b641a8f8b9e85f70a3ad5d6af1ea'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








