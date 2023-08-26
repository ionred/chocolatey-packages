
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a17ce4c8-b97e-492c-b4bf-61dbf8fc78cf/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8fbe4c77-557a-4c3b-8456-2719a9f6f505/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'c70e6a74ff2f6c1ebdc536f0194bf5866071ff92b4f17b41ae5aa7d8c233b96a'
  checksumType  = 'sha256'
  checksum64    = 'daa8292130d2211ab9fffd4a6ec2bd52021a2dc59cc0e6fd5cb18d60c674f5b5'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








