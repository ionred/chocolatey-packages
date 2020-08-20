
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/52cb7f18-3c6c-497c-afd1-bb175b1af2ec/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ca9b38ea-fce7-4d41-88e7-6dd10165ecda/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '18fec9faf01f056a0997a94c3fe9bd0c7b8da8e29a2651b13223764b572ba105'
  checksumType  = 'sha256'
  checksum64    = '7938a253214650b9bce78391d6ed80a9dae46b44015a0cb76eda39c491b88aaa'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








