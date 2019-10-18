
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a7d3293d-a57f-4c51-bddb-8bd03b3af9fe/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/3cde117f-769e-4881-80b7-eacb0452c8ab/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '668f023e9fbd206bce0e11842f3f4b4182f192678da038bfb7951e2a1efba581'
  checksumType  = 'sha256'
  checksum64    = 'b341014f6958868aa1ae8b4edf63dc95762db26060aae68d16ae377a0a6d3b2c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








