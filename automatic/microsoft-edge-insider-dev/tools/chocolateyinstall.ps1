
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aaab2c73-b51d-4ea5-8c72-a024a77e00f6/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/24b23fdf-7161-47bd-a482-2c9d3fa3164e/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '1dcb7d59f92c8a4becb0d20d288474183ef020a391f2cbd3a886de1ff5960cd5'
  checksumType  = 'sha256'
  checksum64    = '8c3c768b13910b760d5a873ba82d29e3d8f64a4742d3ed7ae23fbf750e7d0003'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








