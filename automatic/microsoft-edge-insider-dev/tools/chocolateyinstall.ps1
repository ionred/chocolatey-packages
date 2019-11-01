
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/84d2bbf8-859a-44f9-bdad-3f72fcaf8bf8/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/128774a3-008c-40da-ae73-6e57de768771/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '8004dd9545b35f5dd96e71b915c4c3f4e67b4260794eabaf5cd2391b1f346c8e'
  checksumType  = 'sha256'
  checksum64    = 'f5a5097d97a6655dbb4d956def653982e61999fd053b83d06f5708dcc530eae1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








