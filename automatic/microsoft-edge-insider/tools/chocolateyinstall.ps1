
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/f1389792-ee90-49f6-8289-207b2aac2722/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8573b85f-62b6-44c1-a035-ae6ba78d02b3/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '94bdb93f072faf61d44b531268630ab0516bacececbff0bcd5bb6daeb3b91dd9'
  checksumType  = 'sha256'
  checksum64    = 'baf3527017366e64710b6a2cff73fd164cf1d69c2ed8e90459790786f8b6a28a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








