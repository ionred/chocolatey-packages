
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b023dadb-c807-4f50-94fc-0015cff67d02/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d666204c-a27b-46fa-a2e8-880aa0550e21/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '54f0cd328fb9d6f56ceec33cdfb0f52acd61e23fcb31667c0ed5345bfa26a003'
  checksumType  = 'sha256'
  checksum64    = 'a2be2b2881b39a1e48abb82c06be3f1b2e925e85065ffe15058b2dcbbc0c2f94'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








