
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4d96df41-dcdb-401b-838f-951f9ebfc72b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/43dcd773-901b-44b7-ad06-d339e6be30ce/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'f0d9b8d64e71cfda9f33bd993ff45d3ec95208682fb38c3c05a0d4d2f5d8ff77'
  checksumType  = 'sha256'
  checksum64    = 'fa444a5c7be8dffb0186ef17f071bf08c6f03649607583e497e3fd69e345da70'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








