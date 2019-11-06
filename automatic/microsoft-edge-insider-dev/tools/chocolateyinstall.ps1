
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/db13b7ba-fa91-4869-b4ca-514df88a35bb/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/51ce7d88-4f9a-4bc1-abe9-c0f4c5dd6183/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'dd8b346e70ee4aa81f63e16932d78a46c5cf7c5cd0c6d0f8b5ccf205d23482b1'
  checksumType  = 'sha256'
  checksum64    = '0a3bdad605939151522681de7ad50ab7a274f52828d5ebdec3014e5ebb0e16d6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








