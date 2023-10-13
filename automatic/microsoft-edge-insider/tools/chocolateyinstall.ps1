
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e9ba954-1709-487a-9d28-f381f3e75530/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/58764789-f8ea-4c59-9f7b-79669df4b887/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '6e0d419277e0d6e46c5dd586fa7c332906bf8afeb7fce3b3e9e3ad69bc73f8d2'
  checksumType  = 'sha256'
  checksum64    = '48cd3f97bd68e03ac2837b9c970dc43c3960d6bfeb68f18d2031185751c9e4d6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








