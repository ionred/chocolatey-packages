
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dac8e22c-1d65-45d8-b8e1-6610cdbc7feb/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d3c3933b-c5f1-4f46-a8f3-3585a004eb1d/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '426729a7493d2a50e592b2006566441e1b24ae601915457c66300f25a8e5bf9b'
  checksumType  = 'sha256'
  checksum64    = '8e0179f2b0366d1eb7d766b36c4c23ed7d9a0ac0578782c1ba25d2aea77a684f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








