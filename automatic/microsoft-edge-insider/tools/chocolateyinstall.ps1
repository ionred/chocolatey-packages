
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1d9263b6-d01b-492f-a6ed-741d79f1e634/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ed6a9464-9f21-458c-b947-738fd3135731/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '7b92e9f6ac5907cc5331b2cf8fe618e790fea4727ee5838c2f3489fb7dc90899'
  checksumType  = 'sha256'
  checksum64    = 'f2b45c55f35cb7d511c384150d07b14240b34d45d6ca0a9e405d8889acc26e2f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








