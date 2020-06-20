
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ea6d8b2d-42d5-49a6-a81f-e30eb821e3cf/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/28c3f9c0-61e9-477f-b73d-5b174d52a449/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '610192b9cefefbc416c719b1f3d10a18aa1d9ebad2081765420412fb355c3bbf'
  checksumType  = 'sha256'
  checksum64    = '8bb8271ec17f45585620abe21f7615dcbca6fc39f46a76a7eaa00f21cbb17c60'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








