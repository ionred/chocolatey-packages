$ErrorActionPreference = 'Stop';

$version = '146.0.3856.9'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6d8977e7-3c05-42e7-9ced-6414026f7c18/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/709c84e9-18a2-4d26-8ea3-d2191639bba0/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'B62FA3B7464CFC4A625931CD4FE80D5E897D40A712BCB793496A3F56D0985A18'
  checksumType  = 'sha256'
  checksum64    = 'AFE9984987E9E1B7204A7DD5E8F4764A6ED2D0B4A3F7A9615C8DCC7E69BF7238'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








