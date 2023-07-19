
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f45f1804-9ff5-4dc4-91a1-cd9251970da4/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dbd0f7e6-a4f9-4ceb-8193-e95acfabe499/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '605dcc024f289a1b113a6b7bb7f467bb3162ddb806a2a6cb1f4e1b4cf0e43fdc'
  checksumType  = 'sha256'
  checksum64    = '87134939f6e029982275e0a2011fe33830280c50ac5fe734feaa098b6b42ca33'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








