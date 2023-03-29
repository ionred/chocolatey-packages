
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20e2ea56-1dc8-4b8c-81d0-3d2ddbc93d7d/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/eab566ec-0a65-489d-ba0d-aad6f3699b5a/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'ec1b97b2b282817df14b2b43c92988ce16fbf2fc7e55634945c54dbf50ac8140'
  checksumType  = 'sha256'
  checksum64    = '57db0737c123aca6b572284dc0ee689b4a1e107b1e462c1f1c632ccdf4be3f5f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








