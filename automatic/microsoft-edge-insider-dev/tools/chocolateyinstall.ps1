
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7df09538-3aa6-4389-94c2-f823c9bdc6f8/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6d0fd93a-ab4d-48a8-a9f6-c2975fac21e5/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '7bbf5e11297a4ed1f62f6b9722fed6edfbb4a04ea65d3562d927233f7818e1dd'
  checksumType  = 'sha256'
  checksum64    = 'ac4a0aa7dad3a7e7211ee288883e909c30323d843c997aa0b1a003c2473d3599'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








